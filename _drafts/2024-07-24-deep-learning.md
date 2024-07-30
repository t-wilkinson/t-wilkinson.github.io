---
layout: post
title: Deep Learning
date: 2024-07-24 14:00:45
description:
tags: ai
categories:
chart:
  chartjs: true
---

> Deep learning is concerned with developing algorithms that learn through insights from cognitive neurscience

Deep Feedfoward Networks == Feedforward neural networks == Multilayer perceptrons

MLP are function approximation machines to achieve statistical generalization occasionally drawing insights from neuroscience to drive innovation. The fact that MLP are function approximation machines (and that they don't require domain knowledge) is perhaps their greatest strength. The ability to approximate any prohibitively complex and computationally intensive function gives rise to their impressive generality.

Deep learning models, particularly LLM are generally over-parameterized. This allows certain techniques such as LoRA for parameter efficient fine-tuning and model distillation techniques such as DistilBERT.

In a computational graph, every node knows its inputs, outputs, operation, and backpropagation.

# Important equations

## Loss function

$$
J(\theta)=-\mathbb{E}_{X,Y\sim\hat{p}_{data}}[log~p_{model}(y;x,\theta)]+\lambda\Omega(\theta)
$$

The standard learning function for a deep learning model. Take the models predicted assocation between data and label. Any prediction less than guaranteed is incorrect, and the negative log is taken. The less likely the model associates the data and label, the more the loss value. The model parameters $$ \theta $$ are updated relative to its contribution to the loss.

## Gradient calculation

$$
G^i := \frac{\partial J}{\partial u^j} \frac{\partial u^j}{\partial u^i} = \sum_j f^j.backprop(u^i, u^j.inputs, G^j) = \frac{\partial J}{\partial u^j} \sum_{path(u^(\pi_1=j), \ldots, u^(\pi_t=i))} \prod_{k=2}^{k=t}\frac{\partial u^{\pi_k}}{\partial u^{\pi_{k-1}}}
$$

The gradient of a model for each parameter $$u^i$$ is the contribution of each parameter $$u^j$$ to the loss $$J$$, and the contribution of $$u^i$$ to $$u^j$$ ($$\frac{\partial u^j}{\partial u^i}$$).

## Parameter update


$$
\theta^i \leftarrow \theta^i - \epsilon G^i
$$

Updating model parameters based on the learning rate $$\epsilon$$ and the gradient $$G$$.

## Expectation and gradient


$$
\frac{\partial}{\partial \theta}\mathbb{E}_X [f(x,\theta)] = \frac{\partial}{\partial \theta}\int_{-\infty}^{\infty}p(x)f(x,\theta)dx = \int_{-\infty}^{\infty}p(x)\frac{\partial}{\partial \theta}f(x,\theta)dx = \mathbb{E}_X [\frac{\partial}{\partial \theta}f(x,\theta)]
$$

Gradient descent can sum across the model applied to each data element, or to the model applied to the entire dataset

# Architecture
- Output should be the smallest amount of structurless data that can derive data with necessary structure
- Weights pre activation represent how feature configurations should be activated
- Weights post activation represent the values of activated values
- Difference between the two interpretations (computation vs. variation)
- Each layer extracts more structure from the previous layer

Activation functions:
- Output units
    - Linear units
    - Bernouli
    - Softmax
        - Softmax is a differentiable version of the max element function.
        - A temperature parameter can be included. Increasing the temperature flattens the curve, increasing the entropy, wherease decreasing the temperature roughens the curve, decreasing entropy of the distribution.
ReLU: Specifics specify slope of negative input; absolute/leaky ReLU; learned parameters

Layer:
- $$h^{(n)}_i$$ is the result of a linear functional applied to $$h^{(n-1)}$$. It weighs each feature of the previous layer and captures the essence in a single number.
- A layer is mapped to a scalar (unit) to detect a feature
    - A covector
    - Creates new feature that weights features in previous layer
- A layer in a MLP is a sequential step in a computer program. Each layer is a collection of parallel steps.
    - Do as much parallel computation as reasonable to power next layer
- Feed forward networks is a composition of vector functions with n layers
- Each layer is a linear map (vector function, mapping an input vector to output vector)
    - Linear maps imply variables don't interact (with other variables or themselves)
    - There is no generative effect relative to linear relationships
- Each layer can express a different transformation, computation, relationship, or action in a sequence
- Function applications are interspersed with a feature mapping
- That is the input to any function is an extraction of features of the input
- No individual layer is determined by the training data
- Linear layer maps input to a domain where activation function can meaningfully solve a problem
- Deep learning layers continuously update the input like a function
- Makes several updates or refinements of the representation of the data
- The dot product acts as a feature extractor. Each vector represents a feature in vector space and the degree of similarity between two vectors determines how similar the features are.

# Papers
- Architectures
    - CNN
    - Self organizing map
- Techniques
    - ResNet
    - Dropout
- Foundations
    - Point neurons
    - Perceptron
- Seminal papers/concepts
    - Batch training
    - Stocastic gradient descent
    - Autograd
    - Pytorch
    - Point neuron
    - Perceptron
    - Droput
    - Normalization
    - ResNet
    - Transformer

# Considerations
Position dependencies. The distance between two inputs or two outputs is an important tradeoff. Gaining more information from distant positions can result in an exponential increase in complexity. Attention mechanisms solve this issue by learning context dependent attention mechanisms.

# Pitfalls
An important of caveat of many deep learning models is the single stacked layers of feature detectors. This leads to a complexity and confusion as every parameter has some affect on how the input and output is interpreted. Transformers partly solve this issue, but it still falls short.

