---
layout: post
title: Model Architectures
date: 2024-07-23 16:43:39
description:
tags: ai
categories:
---

- rl := reinforcement learning
- llm := large language model
- gpt := generative pretrained transformer

- openai

Language-augmented vision models utilize language to supplement image data and further understanding of visual semantics, in order to specialize in tasks like object detection, object classification, segmentation, captioning, visual generation, and visual editing. Where the task is implicit in the model design. However, language is a useful general interface for a variety of tasks, and a visual model can interface through language to select tasks, provisioning the road for a more general visual model.

LLM: DeepSeek, Starling
GPT
MiniGPT-4
BERT
Gemini
LLaVA
Multimodal: LLaVA
MegaByte
- #machine-learning#icml# [MegaByte: Predicting Million-byte Sequences with Multiscale Transformers]{author=Lili Yu; author=Dániel Simig; author=Colin Flaherty; author=Armen Aghajanyan; author=Luke Zettlemoyer; author=Mike Lewis; ref=./resources/reading/2305.07185.pdf}
[z:1125.23023.45031] #cognitive-science#clip#openai# [(CLIP) Learning Transferable Visual Models From Natural Language Supervision]{subject=Proceedings of the International Conference on Machine Learning 2020; author=Alec Radford; author=Jong Wook Kim; author=Chris Hallacy; author=Aditya Ramesh; author=Gabriel Goh; author=Sandhini Agarwal; author=Girish Sastry; author=Amanda Askell; author=Pamela Mishkin; author=Jack Clark; author=Gretchen Krueger; author=Ilya Sutskever; ref=./resources/reading/2103.00020.pdf}
[z:0056.73123.99603] #openai#clip# [CLIP: Learning Transferable Visual Models From Natural Language Supervision]{}

# LLMs
Have an understanding of words, sentence and grammer structure, and paragraph structure. But are limited to a large degree by their context size, as it has a O(n²) growth in complexity with respect to its context size.

Transformers, then, require in addition to their context, a additional, more abstract concept of "goals". Something more long term to attend to, to keep everything consistent and with a higher up view of what it is attempting.

## GPT #gpt#
GPT2: https://d4mucfpksywv.cloudfront.net/better-language-models/language_models_are_unsupervised_multitask_learners.pdf

## MiniGPT-4 #gpt#
[BLIP2](https://huggingface.co/docs/transformers/main/model_doc/blip-2) The model architecture of MiniGPT-4 follows BLIP-2. Don't forget to check this great open-source work if you don't know it before!
[Lavis](https://github.com/salesforce/LAVIS) This repository is built upon Lavis!
[Vicuna](https://github.com/lm-sys/FastChat) The fantastic language ability of Vicuna with only 13B parameters is just amazing. And it is open-source!
- [MiniGPT-4: Enhancing Vision-Language Understanding with Advanced Large Language Models]{ref=./resources/reading/2304.10592.pdf}

## BERT
Best practices are established by Liu et al. in 2019.

# Transformer
Allows the model to contextualize responses. Develop attention at multiple levels of abstraction.

Composite transformer

- #cognitive-science# [Efficient Transformers: A Survey]{ref=./resources/reading/2009.06732.pdf}
- #cognitive-science# [Fast Transformer Decoding: One Write-Head is All You Need]{ref=./resources/reading/1911.02150.pdf}
- #cognitive-science# [Transformer Architecture: The Positional Encoding]{author=Amirhossein Kazemnejad's Blog; ref=https://kazemnejad.com/blog/transformer_architecture_positional_encoding/; resource=website;}
- #cognitive-science# [Training Tips for the Transformer Model]{ref=./resources/reading/1804.00247.pdf}

## Q-transformer
Will have a short term memory if only looking at most recent actions and states. Want to potentially do something like the DeepMind Atari reinforcement AI.

## Architecture
### Encoder
Takes input as a whole. Trained by putting noise on input or filling input with holes.
Useful model for forming world views from imperfect information.

### Decoder
Takes input in sequences. Autoregressive. Trained by predicting next sequence.

## Issues

## Improvements

## Resources
- https://s3-us-west-2.amazonaws.com/openai-assets/research-covers/language-unsupervised/language_understanding_paper.pdf
- Improving Language Understanding by Generative Pre-Training
- BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding
- Fast Transformer Decoding: One Write-Head is All You Need
- [Introduction to Transformers](https://www.youtube.com/watch?v=XfpMkf4rD6E&t=1198s&ab_channel=StanfordOnline)
- [Lets build GPT: from scratch, in code, spelled out](https://www.youtube.com/watch?v=kCc8FmEb1nY&ab_channel=AndrejKarpathy)
- #transformer# [Stanford CS 25]{subtitle=Transformers United; ref=https://web.stanford.edu/class/cs25/; resource=website;}
# CLIP
- [StyleCLIPDraw: Coupling Content and Style in Text-to-Drawing Synthesis](./resources/reading/2111.03133.pdf)
- #cognitive-science#CLIP# [(CLIP) Learning Transferable Visual Models From Natural Language Supervision]{subject=Proceedings of the International Conference on Machine Learning 2020; author=Alec Radford; author=Jong Wook Kim; author=Chris Hallacy; author=Aditya Ramesh; author=Gabriel Goh; author=Sandhini Agarwal; author=Girish Sastry; author=Amanda Askell; author=Pamela Mishkin; author=Jack Clark; author=Gretchen Krueger; author=Ilya Sutskever; ref=./resources/reading/2103.00020.pdf}

# Reinforcement learning
- [DQNN: Human-level Control Through Deep Reinforcement Learning - DeepMind](./resources/reading/dqnnaturepaper.pdf)
- [Q-learning - Watkins Dayan](./resources/reading/Watkins-Dayan1992_Article_Q-learning.pdf)


# GNN

# GAN
$$\min{G}\max{D} V(G,D) = \mathbb{E}_{X\sim\hat{p}_{data}}[log D(x)] + \mathbb{E}_{Z\sim\hat{p}_{data}}[1-log D(G(Z))]$$

- #gan# [GAN]{subtitle=Generative Adversarial Networks; author=Ian J. Goodfellow; author=Jean Pouget-Abadie∗; author=Mehdi Mirza; author=Bing Xu; author=David Warde-Farley; author=Sherjil Ozair†; author=Aaron Courville; author=Yoshua Bengio; ref=./resources/reading/1406.2661.pdf; resource=pdf;}
- #gan# [PGAN]{}
- #gan# [BEGAN]{subtitle=Boundary Equilibrium Generative Adversarial Networks; ref=./resources/reading/1703.10717.pdf; resource=pdf;}
- #gan# [DCGAN]{subtitle=Unsupervised Representation Learning WITH Deep Convolutional Generative Adversarial Networks; ref=./resources/reading/1511.06434.pdf; resource=pdf;}
- #gan# [CGAN]{subtitle=Conditional Generative Adversarial Nets; ref=./resources/reading/1411.1784.pdf; resource=pdf;}
- #gan# [Improved Techniques for Training GANs]{author=OpenAI; ref=./resources/reading/1606.03498.pdf; resource=pdf;}
- #gan# [Multimodal Conditional Image Synthesis with Product-of-Experts GANs]{author=NVIDIA; ref=./resources/reading/2112.05130.pdf; resource=pdf;}
- #gan# [WaveNet]{subtitle=A Generative Model For Raw Audio; author=DeepMind; ref=./resources/reading/1609.03499.pdf; resource=pdf;}
- #gan# [Instance-Conditioned GAN]{author=Facebook; ref=./resources/reading/2109.05070.pdf; resource=pdf;}
- #gan# [GANSpace]{subtitle=Discovering Interpretable GAN Controls; ref=./resources/reading/2004.02546.pdf; resource=pdf;}
- #gan# [Image-to-Image Translation with Conditional Adversarial Networks]{author=Phillip Isola; author=Jun-Yan Zhu; author=Tinghui Zhou; author=Alexei A. Efros; ref=./resources/reading/1611.07004.pdf; resource=pdf;}
- #gan# [StyleFlow]{subtitle=Attribute conditioned Exploration of StyleGAN Generated Images using Conditional Continuous Normalizing Flows; author=Rameen Abdal; author=Peihao Zhu; author=Niloy Mitra; author=Peter Wonka; ref=./resources/reading/StyleFlow:-Attribute-conditioned-Exploration-of-StyleGAN-Generated-Images-using-Conditional-Continuous-Normalizing-Flows-by-Rameen-Abdal,Peihao-Zhu,Niloy-Mitra,Peter-Wonka.pdf; resource=pdf;}
- #gan# [Training Generative Adversarial Networks with Limited Data]{author=NVIDIA; ref=./resources/reading/2006.06676.pdf; resource=pdf;}
- #gan# [High-Resolution Image Synthesis and Semantic Manipulation with Conditional GANs]{author=Ting-Chun Wang; author=Ming-Yu Liu; author=Jun-Yan Zhu; author=Andrew Tao; author=Jan Kautz; author=Bryan Catanzaro; ref=./resources/reading/1711.11585.pdf; resource=pdf;}
- #gan# [InsetGAN for Full-Body Image Generation]{ref=./resources/reading/2203.07293.pdf; resource=pdf;}
- #gan# [JoJoGAN]{subtitle=One Shot Face Stylization; author=Min Chong; author=D.A. Forsyth; ref=./resources/reading/2112.11641.pdf; resource=pdf;}

# CNN
- Each layer is a collection of image filters or feature extractors. Layers progressively form higher-level understanding of the image. Initial layers focus on low-level pixel based information like detecting edges. Later layers form high-level representations of the image.
- One can visually examine the information at each layer by viewing the feature maps
- Dramatically reduce complexity of neural network (as opposed to densly connected) and these constraints provide a built in idea of space into image processing

- [Object Recognition with Gradient-Based Learning - Yann LeCun, Patrick Haffner, Léon Bottou, Yoshua Bengio](./resources/reading/lecun-99.pdf)
- VGG
    - [Very Deep Convolutional Networks for Large Scale Image Recognition - Karen Simonyan,Andrew Zisserman](./resources/reading/Very-Deep-Convolutional-Networks-for-Large-Scale-Image-Recognition-by-Karen-Simonyan,Andrew-Zisserman.pdf)
- DenseNet
- AlexNet
- ConvNet

- DenseNet
- ResNet
    - HighwayNet
    - DenseNet

- DeCNN
    - [Deconvolutional Networks](./resources/reading/deconvolutionalnetworks.pdf)
- RegNet
    - [RegNet: Self-Regulated Network for Image Classification - Jing Xu, Yu Pan, Xinglin Pan, Steven Hoi, Fellow, IEEE, Zhang Yi, Fellow, IEEE, and Zenglin Xu](./resources/reading/2101.00590.pdf)
    - [Deep Residual Learning for Image Recognition - Microsoft Research](./resources/reading/1512.03385.pdf)
- FPN
    - BiFPN
    - [Feature Pyramid Networks for Object Detection - Facebook AI Research](./resources/reading/1612.03144.pdf)

# Resources
- [GATO: A Generalist Agent](./resources/reading/2205.06175.pdf)
    - https://openreview.net/pdf?id=1ikK0kHjvj
[z:1125.23023.88829] #cognitive-science#transformer#BERT# [BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding]{ref=./resources/reading/1810.04805.pdf}
Bidirectiional Encoder Representations from Transformers
[z:1125.23023.70763] #cognitive-science# [Photorealistic Text-to-Image Diffision Models with Deep Language Understanding]{ref=./resources/reading/2205.11487.pdf}
[z:1136.43023.31142] #cognitive-science# [DistilBERT, a distilled version of BERT: smaller, faster, cheaperr and lighter]{ref=./resources/reading/1910.01108.pdf}
Based on a technique known as knowledge distilation.

Authors achieved a reduced model size by 40%, retaining 97% of its language understanding, while being 60% faster.

An important factor of large language models is their ability to learn inductive biases. In other words, they store knowledge in their many parameters.

Models are trained to minimize cross-entropy loss between one-hot empirical distribution of training labels and the models predicted distribution. During training, the model uses a temperature parameter on softmax function, but during inference, the temperature is set to 1 to recover the standard softmax function.

The final training object is a linear combination of supervised learning loss, cross entropy loss between the teacher and student, and a cosine embedding loss aimed to align the directions of the teacher and students hidden states vectors.

Transformer architecture (linear layer followed by normalization) is highly optimized in machine learning frameworks so the authors found reducing the number of layers a more effective reduction in computation. To initialize the student and taking advantage of same dimensionality, one out of two layers were taken.

DistillBERT on 8 16GB V100 GPUs for approximately 90 hours. In comparison, RoBERTa model Liu et al. 2019 required 1 day of training on 1024 32GB v100.
[z:1125.23023.64564] #cognitive-science#machine-learning#image-generation#image-editing#image-inpainting#diffusion-models#guided-diffusion#clip#contrastive-learning# [GLIDE: Towards Photorealistic Image Generation and Editing with Text-Guided Diffusion Models]{author=Alex Nichol; author=Prafulla Dhariwal; author=Aditya Ramesh; author=Pranav Shyam; author=Pamela Mishkin; author=Bob McGrew; author=Ilya Sutskever; author=Mark Chen; ref=./resources/reading/2112.10741.pdf}
[z:1125.23023.23147] #cognitive-science#ai-model#bart# [BART: Denoising Sequence-to-Sequence Pre-training for Natural Language Generation, Translation, and Comprehension]{ref=./resources/reading/1910.13461.pdf}
[z:1125.23023.12728] #cognitive-science#3d-model#ai-model# [Point-E: A System for Generating 3D Point Clouds from Complex Prompts]{ref=./resources/reading/2212.08751.pdf}
[z:1614.65222.55506] #cognitive-science#model-architecture# [Attention is All You Need]{author=Google Brain; ref=./resources/reading/Attention-is-All-You-Need-by-Google-Brain.pdf;}
- Most Seq2Seq implementations use recurrent neural networks or CNNs which are sequential and slow.
- Most architectures include an encoder and decoder.
- This paper proposes a new architecture relying purely on attention mechanisms.
- Attention mechanisms identify dependencies among items regardless of distance
- Most attention models have non-constant dependency mapping compared to distance.
- How does multi-head attention conteract the reduce effection resolution due to averaging attention-weighted positions

# Parallelism
One key feature the transformer promotes is parallelism. Inputs don't depend on each other.

# Architecture
## Positional embedding
Embedding space places words in a space based on where they occur in sentences, how often, what context they appear in, and what words appear around them.
Adding a positional embedding is like adding a vector to the word embedding, slightly moving it through its embedding space, changing its meaning.

The paper uses sin and cosine functions to construct the positional embedding by encoding different resolutions at different positions of the word embedding. The initial indeces clearly distinguish immediate position at a loss of general position and the later indeces distinguish general areas with a loss of immediate positions.
Don't want to overweigh semantic embedding with positional embedding. sin and cosine have a fixed output range [-1,1] which means they won't overinfluence the semantic embedding of words.

Positional embeddings should be viewed as a pair of functions $sin(\omega_k \cdot t)$ and $cos(\omega_k \cdot t)$ where $\omega_k = \frac{1}{10000^{2k/d}}$. A nice property of these functions is it allows differentiating relative position differences with a linear function which allows the model to attend to relative word positions. Positional encodings represent a binary encoding of float values. They also generate embedings that differ symmetrically and nicely with time. Using both sine and cosine allow the model to form linear transformation that allows attending to relative positions, using a single one disallows this. The $\omega_k$ allows representing a sort of binary encoding.

Think of sin and cos as expressing the x and y position on the unit circle, in a sense halfing the dimension of the embedding vectors.

## Multi-head attention
Teaches the model to form multiple representation subspaces. Each subspace leads to isolating properties that each head wants to attend to, which also allows parallelization of attention.

Multiplying the query and key matrices results in a matrix representing each word which attends to every other word.

## Decoder
The decoder has a mask to prevent the self-attention layer from attending to future positions in the output sequence. This mask exists during training to allow parallel computation of a sequence, allowing getting the error of a mini-batch. In order to avoid the accumulation of errors of predicted outputs, we can use the real value to attend to. During inference, the model is run sequentially and even if it was parallelized, it would need a mask to avoid new input from the otherwise masked QK. Note that during inference, the output of decoders can be reused for future inferencing, improving performance.

# Limitations
Large contexts. Maybe a "meta" context?
Quickly summarize, then go back through, passing through the generated "summary".
The issues that big context attention has is similar to pitfalls of human attention.
LongNet
Another solution is memory. Instead of paying attention to more parts of a the input, store important parts of the context in memory.
Include a goal module that selects what part of context to pay attention to first, store it in memory, then use it.
Convlution attention.

# Other

[z:1821.40624.10914] [Gemini v1.5 report]{ref=./resources/reading/gemini-v1-5-report.pdf}
[z:0710.60624.63206] [V-JEPA: Revisiting Feature Prediction for Learning Visual Representation from Video]{ref=./resources/reading/427986745-768441298640104-1604906292521363076-n.pdf}
- https://openai.com/research/video-generation-models-as-world-simulators
- https://ai.meta.com/blog/v-jepa-yann-lecun-ai-model-video-joint-embedding-predictive-architecture/?utm_source=substack&utm_medium=email
- https://github.com/facebookresearch/jepa/tree/main

- https://github.com/eugeneyan/open-llms
- https://huggingface.co/docs/transformers/performance
- https://youtu.be/JXT4vfdhs2A
- https://github.com/Sentdex/Falcon-LLM
- [Let's build GPT: from scratch, in code, spelled out]{ref=https://www.youtube.com/watch?v=kCc8FmEb1nY&list=WL&index=31&t=21s&pp=gAQBiAQB; resource=website;}
- [Tree of Thoughts: Deliberate problem solving with large language models]{ref=https://www.youtube.com/watch?v=ut5kp56wW_4; resource=website;}

# Modalities
LLM
Reinforcement learning


# Models
- #llm#llava# [LLaVA: Visual Instruction Tuning]{ref=./resources/reading/2304.08485.pdf}
- #alphageometry#deepmind# [Solving olympiad geometry without human demonstrations]{subject=Nature, doi:10.1038/s41586-023-06747-5; author=Trieu H. Trinh; ref=./resources/reading/s41586-023-06747-5.pdf}
- #agi#llm# [V*: Guided Search as a Core Mechanism in Multimodal LLMS]{ref=./resources/reading/2312.14135.pdf}
- #cognitive-science# [Q-Transformer: Scalable Offline Reinforcement Learning via Autoregressive Q-Functions]{ref=./resources/reading/qtransformer.pdf}
- #cognitive-science# [JARVIS-1: Open-world Multi-task Agents with Memory-Augmented Multimodal Language Models]{ref=./resources/reading/2311.05997.pdf}
- #cognitive-science# [A* Search Without Expansions: Learning Heuristic Functions with Deep Q-Networks]{ref=./resources/reading/2102.04518.pdf}
    A* works to minimize the function $f(n) = g(n) + h(n)$ where $g(n)$ is the path from the start to n and h is the heuristic function. A Q-function can be used to guide search based which learns the transition costs and heuristic values. This essentially learns the shortest path from any node to the end.

    A potential issue is that this only encodes a single goal. It possibly has trouble encoding multiple goals, or temporarily switching goals, lack of metacognition, etc.

    Can be used as an abstract goal following AI. The nodes here only represent goal states, and not states in the surrounding environment. That means the optimal goal path needs to be research (might be efficient ways to do this).

## AlphaFamily
- #cognitive-science#DeepMind# [AlphaGo]{author=DeepMind; ref=./resources/reading/AlphaGoNaturePaper.pdf; resource=pdf;}
    - Train on 100k of self-play
    - About 17 iterations leads to world-championship (1.7M games)
    - Play against old version. If new version beats old version, new version becomes the standard.
        - Also note positions that the previous model had trouble with. Ensure that the new model doesn't have the same issues.
        - This means that after 100k iterations, bad traits can propogate.
        - Sometimes models can become adversarial and not find general solutions.
        - Adversarial means essentially that the model focuses on beating individuals rather than the game. They are more short term focused. Not focused on the overall goal.
    - This method is like a mini-evolution
    - Monte-carlo tree search
        - Values each move, then selects the most likely to succeed. Continues until the end of the game, accumulating the overall value of each position, in particular note that a win or loss will be weighted.
- #cognitive-science#DeepMind# [AlphaGo Zero]{author=DeepMind; ref=./resources/reading/AlphaGo-Zero---DeepMind;}
- #cognitive-science#DeepMind# [(AlphaZero) Mastering Chess and Shogi]{author=Self Play with a General Reinforcement Learning Algorithm - DeepMind; ref=./resources/reading/Mastering-Chess-and-Shogi-by-Self-Play-with-a-General-Reinforcement-Learning-Algorithm-by-DeepMind.pdf; resource=pdf;}
    The primary modules are a value network (fast-thinking), policy network, and MTCS (slow-thinking).
- #cognitive-science#DeepMind# [(MuZero) Mastering Atari,Go,Chess and Shogi]{author=Planning with a Learned Model - Deep Mind; ref=./resources/reading/Mastering-Atari,Go,Chess-and-Shogi-by-Planning-with-a-Learned-Model-by-Deep-Mind.pdf; resource=pdf;}
- #cognitive-science#DeepMind# [(AlphaStar) Grandmaster level in StarCraft II using multi agent reinforcement learning]{author=Deep Mind; ref=./resources/reading/Grandmaster-level-in-StarCraft-II-using-multi-agent-reinforcement-learning-by-Deep-Mind.pdf; resource=pdf;}
- #cognitive-science#DeepMind# [AlphaFold]{author=DeepMind; ref=./resources/reading/343019_3_art_0_py4t4l_convrt.pdf; resource=pdf;}
- Technical advances
    - Most complex system they built with 32 component algorithms and 60 pages of supplementary information
    - There was no silver bullet, a complex system of interworking components. Emergence is the key here.
    - Used attention

## LLaMA
LLaMa 2: https://arxiv.org/pdf/2307.09288.pdf
LLaMA code: fine-tuned for generating and discussing code[
LLaMA code: https://huggingface.co/TheBloke/CodeLlama-13B-fp16
LLaMA Python: Fine-tuned on 100B tokens of python code.
- [LLaMA: Open and Efficient Foundation Language Models]{author=Meta AI; ref=./resources/reading/2302.13971.pdf}
- [LLaMA 2: Open Foundation and Fine-Tuned Chat Models]{ref=./resources/reading/10000000-662098952474184-2584067087619170692-n.pdf}
- https://huggingface.co/nyanko7/LLaMA-7B/tree/main
- https://huggingface.co/huggyllama/llama-7b/tree/main

## DALL-E
- #cognitive-science#machine-learning#DALL-E# [(DALL-E) Zero-Shot Text-to-Image Generation]{subject=Proceedings of the International Conference on Machine Learning 2020; author=Aditya Ramesh; author=Mikhail Pavlov; author=Gabriel Goh; author=Scott Gray; author=Chelsea Voss; author=Alec Radford; author=Mark Chen; author=Ilya Sutskever; ref=./resources/reading/2102.12092.pdf}
- [DALL-E 2: Image Generation with CLIP Latents - OpenAI](./resources/reading/2204.06125.pdf)
- #cognitive-science#DALL-E# [DALL-E 2]{ref=./resources/reading/dall-e-2.pdf}

## DeepSeek coder
- https://huggingface.co/deepseek-ai/deepseek-coder-33b-instruct

## Starling
- https://huggingface.co/berkeley-nest/Starling-LM-7B-alpha

# Column transformer graph
Gₙ: Generally refers to the below graphs.
G_C: The cortex. Every layer except for III receive input from the thalamus.
G₂₃: Concerns itself with concepts. Forms understanding
G₅: Concerns itself with interacting with actions. In the brain, G₅ is in charge of physical movements. In AI, G₅ is the actions it can take (interacting with computer essentially) for things like text output, creating image, creating video, creating audio, moving mouse, etc.
G₆: Feedback layer.
G_T: Primary receiver of input both subthalamic and cortical areas. Each node represents a thalamic nuclei, each nuclei is in charge of attention of itself. Receives queries (inhibitory input) from G₅ or G₆? (also written Gₜ here).

Context information perhaps comes from column local information, and long rang connections between corresponding "what" and "where" pathways. Parallel "what" and "where" pathways exist for all major sensory modalities. "what" pathways are invariant to rotation, rotation, and scale."where" pathways form egocentric representations.
Sparsity and few-hot encoding represents sparse activation of neurons. Real-valued vectors however represent computations, however with activation functions like ReLU, they perhaps approximate some notion of sparsity.
G₂₃ does not touch G₆ but isn't that necessary to provide context to sequences?
Do we want other columns to change the attention of a g_T?
How exactly do attention and neural circuits relate?
Connections between any cortical layer should be considered a transformer block (attention and feed forward).
Core computations are deciding which neurons should fire, feedback loops which compute sequences.
The subthalamic functions should be considered evolutionarily old, but still replicatable by a column transformer.
Some notion of space of concepts for each column. Does having context dependent sequences for concepts sufficiently provide notion of space?

Try to get column transformer to represent sequences.

Each pyramidal neuron and each micro column layer has an attention network and FFN

Current generation of cortical transformer is not right. There should probably be a seperate computation from G₂₃ to G₅ and G₅ to G₂₃

- Inhibitory connections are like query paramemters.
- What is context?
- Reinforcement learning? RLHF, RLAIF, self-rewarding, etc. are perhaps the best options
- TRN?
- How to generate graph of column transformers
- What about displacement cells?
- Consciousness, emotions, subcortical structures?
- What are feedback connections?
- What kind of computation does G₂₃ and G₅ compute?
- How do we feed information into the CTG to approximate a LLM section, vision model, etc.
- Grid cells, place cells, path integration, etc. are fundamental and CTG needs to be designed with that in mind. To form a space, you need a frame of reference, points, and ways to move between those points in a consistent manner.
- How much of lower cortical structures need to be replicated?
- I need to go through, understand the types of computation being represented in the brain, abstract them and find the necessary computational structures to enable it.
