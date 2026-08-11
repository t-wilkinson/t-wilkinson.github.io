---
layout: post
title: "Autonomous Target Tracking: Edge AI on the ESP32-CAM"
description: "An end-to-end edge ML pipeline integrating a custom FOMO object detection model, C++ inference, and Rust-based networking to guide a robotic vehicle."
date: 2026-08-11
categories: [Portfolio, Projects]
img: /assets/img/esp32-fomo/graph.png
github: https://github.com/t-wilkinson/projects/tree/main/ai/esp32-pc-object-detection
tags: [Robotics, Edge AI, Rust, Computer Vision, Embedded Systems, Machine Learning]
---

## Project Overview
<div style="width: 100%; margin-bottom: 20px;">
{% include figure.liquid
path="/assets/img/esp32-fomo/graph.png"
alt="Cross-Entropy Loss, Train and Val obj accuracy, and LR schedule over 400 epochs"
class="img-fluid rounded z-depth-1"
width="100%"
%}
</div>

Building an autonomous robot that can perceive and interact with its environment requires bridging the gap between high-level machine learning and severely constrained embedded hardware. This project transforms a low-cost ESP32-CAM into the "brain" of a robotic toy car, enabling it to actively track and locate target objects in real time. 

By bypassing heavy traditional object detectors in favor of a lightweight, centroid-based architecture, the pipeline achieves edge-based object detection directly on the microcontroller. The resulting system broadcasts telemetry over WebSockets to drive the vehicle's electronics and steering mechanics.

---

## Technical Architecture

This project leverages a multi-language architecture designed for safety, edge performance, and build reproducibility:

* **Machine Learning & Training Pipeline:** Python, PyTorch, Albumentations
* **Edge Inference Engine:** C/C++, TensorFlow Lite for Microcontrollers (TFLite-Micro)
* **Firmware & Telemetry Service:** Rust (`xtensa-esp32-espidf`), `esp-idf-hal`, WebSockets
* **Development Environment:** NixOS flakes for reproducible cross-compilation

---

## 1. Custom FOMO Object Detection Architecture

Traditional bounding-box regression models (like YOLO or SSD) are too computationally expensive for an ESP32-CAM equipped with ~520KB SRAM and ~4MB PSRAM. To operate within these memory limits while maintaining low latency for closed-loop steering, I implemented a **Faster Objects, More Objects (FOMO)** architecture using a truncated MobileNetV2 backbone.

Instead of predicting 4-coordinate bounding boxes, the image is divided into a uniform grid (e.g., $12 \times 12$ for a $96 \times 96$ input). Each grid cell predicts whether a class centroid is located within its boundaries. This eliminates bounding-box regression anchors, reducing memory consumption and parameter count while preserving the spatial coordinate resolution needed to guide the vehicle.

---

## 2. Iterative Model Tuning & Hyperparameter Optimization

Deploying machine learning on a miniature chassis presents distinct real-world challenges: rapid movement causes severe motion blur, lighting changes dynamically across room floors, and small target objects occupy only a tiny fraction of the camera's field of view. 

To find the optimal balance between inference latency, memory footprint, and tracking accuracy, I executed a series of controlled training iterations.

### Hyperparameter Experiment Matrix

| Iteration | Input Size | Width Mult ($\alpha$) | Loss Function | Class Weights | Quantization | Latency (ms) | Target $F_1$ Score | Notes / Failure Mode |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **v1.0** | $160 \times 120$ | 0.50 | Standard Cross-Entropy | $1:1$ | FP32 | 780 ms | 0.42 | Exceeded memory budget; frame rate (~1 FPS) too slow for closed-loop steering. |
| **v1.1** | $64 \times 64$ | 0.25 | Standard Cross-Entropy | $1:1$ | INT8 | 85 ms | 0.35 | Low latency, but grid resolution ($8 \times 8$) was too coarse to locate small targets. |
| **v1.2** | $96 \times 96$ | 0.35 | Standard Cross-Entropy | $1:1$ | INT8 | 210 ms | 0.51 | High background class ratio caused severe false negatives on target objects. |
| **v2.0** | $96 \times 96$ | 0.35 | Weighted Cross-Entropy | $1:10$ | INT8 | 215 ms | 0.74 | Significantly improved target sensitivity, but suffered from false positives under ambient shadows. |
| **v2.1** | $96 \times 96$ | 0.35 | Focal Loss ($\gamma=2.0$) | $1:8$ | INT8 | 215 ms | **0.86** | **Optimal Configuration:** Suppressed easy background negatives and maintained robust spatial accuracy. |

### Key Tuning Insights

#### A. Class Imbalance Mitigation
In a $12 \times 12$ output grid (144 total cells), a target object typically occupies only 1 to 3 cells, leaving over 97% of the grid as background. Standard Cross-Entropy loss caused the model to over-index on background predictions. Switching to **Focal Loss** dynamically down-weighted easy background examples during training:

$$L_{\text{focal}} = -\alpha_t (1 - p_t)^\gamma \log(p_t)$$

Applying an $\alpha_t$ class weight ratio of $1:8$ for target centroids forced the gradient updates to focus on hard-to-detect target boundaries.

#### B. Camera Sensor Artifacts & Data Augmentations
The low-cost OV2640 camera sensor suffers from significant sensor noise, narrow dynamic range, and rolling-shutter artifacts during car movement. To harden the model against these conditions without expanding runtime complexity, I built a custom domain-specific augmentation pipeline using `albumentations`:

* `ISONoise` & `MultiplicativeNoise`: Simulates low-light sensor grain.
* `MotionBlur` (kernel size 3–7): Simulates vehicle chassis movement and vibration.
* `RandomBrightnessContrast`: Prevents overfitting to fixed indoor lighting setups.

#### C. Model Quantization & PSRAM Allocation
Converting the network from FP32 to **Post-Training INT8 Quantization** reduced the final model payload size to under 250 KB. This allowed the full tensor arena (486 KB) to reside cleanly in PSRAM alongside the decoded RGB frame buffer, keeping peak inference time near ~215 ms (~4.5 FPS total loop execution).

---

## 3. Embedded C++ Inference Layer

The core execution path is managed by a custom C++ component interfacing with TensorFlow Lite for Microcontrollers (TFLite-Micro) and the ESP-IDF camera driver:

1. **Frame Capture & Decoding:** The camera captures a raw RGB565/JPEG frame, which is converted to an uncompressed $120 \times 120$ RGB888 decoded buffer.
2. **Spatial Cropping & Normalization:** Resizes and normalizes the central $96 \times 96$ tensor region using ImageNet mean/std constants baked into the execution routine.
3. **Argmax Grid Extraction:** Parses the output tensor array ($12 \times 12 \times 6$), applies a confidence threshold filter ($\ge 0.45$), and extracts target centroid $X,Y$ grid coordinates.

---

## 4. Firmware, WebSockets & Real-Time Telemetry (Rust)

Memory safety and concurrency are critical when juggling camera reads, model inference, and network streaming simultaneously. The high-level orchestration is implemented in Rust on top of the `xtensa-esp32-espidf` target:


```

┌──────────────────┐      FFI Call      ┌─────────────────────────┐
│  ESP32 Camera    │ ─────────────────> │ C++ TFLite Micro Engine │
└──────────────────┘                    └─────────────────────────┘
│
Returns Centroids
│
▼
┌──────────────────┐    JSON Broadcast  ┌─────────────────────────┐
│ Web Client / Car │ <───────────────── │  Rust WebSocket Server  │
│ Control Driver   │                    │      (Port 80)          │
└──────────────────┘                    └─────────────────────────┘

```

* **C/Rust FFI Bridge:** Safe Rust abstractions wrap the underlying native initialization (`fomo_init`) and inference loops (`fomo_detect`).
* **WebSocket Control Server:** A non-blocking HTTP/WebSocket task broadcasts detection payloads (containing grid cell coordinates, class labels, and confidence metrics) as JSON frames to connected clients.
* **Control Loop:** Operates at ~3 FPS execution bounds, delivering low-latency spatial target coordinates required for downstream steering actuators.

---

## 5. Declarative Build Environment (Nix)

Cross-compiling Rust for the Xtensa architecture while patching underlying ESP-IDF C++ toolchains can lead to complex dependency drift. To ensure absolute reproducibility, the development environment is defined using a `flake.nix` environment:

* Pins exact versions of the Xtensa GCC toolchain (`xtensa-esp-elf`) and Rust compiler (`esp-rs`).
* Automatically patches ESP-IDF CMake scripts to build seamlessly without local `.git` metadata.
* Spawns an isolated Python environment for model re-training and Jupyter notebook evaluation.

---

## Engineering Impact

By combining rigorous iterative hyperparameter optimization with modern systems programming in Rust and C++, this project demonstrates how complex computer vision tasks can be shifted directly onto sub-$10 edge hardware. The resulting platform offers a scalable foundation for lightweight autonomous mobile robotics.

