---
layout: post
title: Artificial Intelligence
date: 2024-07-23 16:38:27
description:
tags: ai
categories:
---

Threats of AI models? What happens if threat actors develop first AGI? There isn't much we can do. But the people who should be in charge are.

Missing memory and sufficient generalization

Process-supervised Reward Models
Overall better at training LLMs as they give more nuanced details.

Perhaps memory would be more effective if model computes and stores future inputs into the model. It could then use the memory to regenerate complex information that can be used to modify the input to the transformer, change the queries, etc.

AI and LLM in particular clearly have huge potential in todays society but what exactly that is isn't exactly clear. The world of AI is changing quickly and its not clear how AI will exactly fit in our lives. They are clearly useful tools for coding, but their role with existing programmers is not well known. Will they replace programmers and when? Will they only ever be a useful tool? Currently, models like ChatGPT are useful as compressed corpus of information, with an intelligent interaction including understanding queries, and usefully packaging and organizing recalled information.

Everyone likes to say that deep learning models are "just numbers" but its an oversimplification. Human brains are "just neurons", and neurons function like small feed foward networks, with some potential for dynamically changing their "weights". Both are universal function approximators. Both take inputs, human brain takes a ton of sensory inputs. Both learn to extract information in a way that is useful for how the intelligent entity interacts with its environment. The few things missing from LLMs, in particular, is a reinforcement model, where the machine learns to set goals. The more general goals become, the more one dives into philosophy, needing to understand how goals affect the entities in its surrounding environment, which is essentially morality. Also, in order to be computationally efficient, they need to "abstract" their philosophy; compress their philosophy and goals to fit a large number of interactions and environments. This is where meaning comes in.

Artificial intelligence models could have some kind of "autism" or another mental disorder like anti-social personality disorder. Just like in humans, it can be difficult to predict and the only way to diagnose it is to look at past events, in which case it is too late.

Consciousness is measurable, but hard to define.

- AI vs. Human
    - Human attributes successful AI must replicate
        - Heuristics
        - Generalizations from little information
        - Relating
        - Memory
        - Competition
        - Brains need very little to learn from and generalize. How much knowledge is encoded in DNA? The brain is very dynamic, so too should nueral networks.
        - The brain is very messy, many parts communicate with others
        - Internal representation of the world
        - Construct thoughts to test algorithms to add to policy network
        - Consciousness seems to be a recursive thought
        - Construct multiple representations/interpretations of the environment.
        - What are the critical parts of the human brain? Neocortex, inner, outer, stem, etc.
        - Dynamic rewriting (in order to do this, would you have to have an intuition on what does what in the neural architecture?)
        - Lazy architecture? (Don't compute until necessary, allow neurons on same level to read from eachother 'before' the fire)
        - What role does the neocortex play in the thought process
        - Morals, conscience, parents, school, culture, religion is the human value network.
        - Human value network is modifiable.
        - Look at everything as a learning experience
        - What is the human value function? value(t) := (current state(t), current goal(t))
        - Exploiters at multiple levels of abstraction.
        - Personality.
            - Ideal for mutualism. Facilitates specialization.
            - Like a puzzle piece.
            - Marriage are two opposite exploiters with a value function maximizing cooperation.
        - Selection function for competition
        - Multiple methods for learning (reinforcement, supervision, and unsupervised)
        - Identify symmetries
        - Evolution (Exploitain of current knowledge and exploration of unkown)
        - Learn from others mistakes. Adapt in real time.
        - Dopamine (and similar) are amazing rewards. They are very general, dynamic, and can be overwritten.
        - There needs both high and low levels of supervised learning. Low levels produce people that rethink everything, very necessary.
        - Neurons are individual units
        - Core 'brain', and dynamic 'functionalities' tacked on the end.
        - Humans reward ourselves from the observation of the action
        - Meta-learning (learn to learn)
        - Abstract when learning small task
        - DNA encodes reward function learnt from millions of years.
        - Learn in multiple simulations
        - The reward function maximizes existance. Anything that does not, will simply fail to exist.
        - Some (complex) variation of NEAT is necessary to reach and match the complexity of evolution of human life.
        - Abstract thought between 'thinking to move' and 'moving in that direction'
        - Q-Learning acts like memory which enables one to learn from the past. Only store the worst / best memories.
        - Human brain only lets a couple bits of information into the brain.
        - Break ultimate reward (existance) into multiple sub-goals.
        - The human brain is very dynamic, as such, there is little hard-coded information
        - Understand symmetry. Understand general layout of game controller but sometimes buttons roles can be reversed. We can then 'transfer learn' without having to relearn.
        - Neurons encode multiple representations of a concept

    - Computers vs. Brains
        - Bad memory has its benefit. Extract essence from concept.
        - Computers suffer from the same effect that humans with amazing memory do. They are able to see in amazing clarity the detail, but not what that detail forms. Unable to see the bigger picture.
        - The digital aspect of computers is what prevents them most from operating similar to humans.
        - Computers are so powerful for humans because they operate on our greatest weakness. The same thing that allows us to create and innovate is what prevents us from holding a couple random numbers in our head, or remembering a picture color by color.
        - In the future, there will be a union with self-aware computers and humans, with those being seperate from classical computers we use today.

- Research
    - Research ideas
        - Have an internal neural net and when faced with a new challenge, init a new neural net with the internal one. Update the internal net very slightly compared to new net
        ? How to encode linguistic information in ai model as a sort of supervised learning
        ? What is the right level of abstraction for knowledge base
            - Something to approximate core knowledge (elizabeth spelke)

    - Look for applications
        - Have point of view of PhD student
            - You need to publish papers
            - You need new innovative ideas
        ? How can it be implemented in code
        ? What problems does it solve
        ? What does it relate to
        - To general AI
        - Visual applications
        - Real-world problems
        - Skip things that are too difficult or mind-bending
        - Really chew on core concepts
        - Think about innovations that you can make
            ? Why is it done like this
            ? Why not this way
            ? What if we add this

- Companies
    - Future AI
        - https://futureai.guru/

# Generalization
Generalization of AI algorithms are abysmal. Human brains are apt at forming abstractions and generalizations.

Perhaps one path to generalization is creating multiple models based on very limited data. This allows offloading a lot of computation beforehand. Then during the next iteration, you identify which model or collection of models are the best. The connection and association between models as well is a very powerful tool to compose models in complex ways. These cross connections can also be tuned and honed to develop multiple complex abstract models and then select the optimal one for the task at hand.

# Architectures
Architectures: Neural Turing machine, Differentiable neural computer, Transformer, Recurrent neural network (RNN), Long short-term memory (LSTM), Gated recurrent unit (GRU), Echo state network, Multilayer perceptron (MLP), Convolutional neural network, Residual neural network, Mamba, Autoencoder, Variational autoencoder (VAE), Generative adversarial network (GAN), Graph neural network
Organizations: Anthropic, EleutherAI, Google, DeepMind, Hugging, Face, OpenAI, Meta, AI, Mila, MIT, CSAIL, Huawei
People: Yoshua Bengio, Alex Graves, Ian Goodfellow, Stephen Grossberg, Demis Hassabis, Geoffrey Hinton, Yann LeCun, Fei-Fei Li, Andrew Ng, Jürgen Schmidhuber, David Silver, Ilya Sutskever
Concepts: Gradient descent, SGD, Clustering, Regression, Overfitting, Hallucination, Adversary, Attention, Convolution, Loss functions, Backpropagation, Batchnorm, Activation, Softmax, Sigmoid, Rectifier, Regularization, Datasets, Augmentation, Diffusion, Autoregression

Convolutional Neural Networks (CNNs): LeNet, AlexNet, VGGNet, GoogLeNet (Inception), ResNet (Residual Networks), DenseNet, MobileNet, EfficientNet, Capsule Networks
Recurrent Neural Networks (RNNs): Elman Networks, Jordan Networks, Long Short-Term Memory (LSTM), Gated Recurrent Unit (GRU), Bidirectional RNNs, Echo State Networks (ESNs), Neural Turing Machines (NTMs), Transformer (though primarily used in sequence-to-sequence tasks)
Graph Neural Networks (Graph Nets): Graph Convolutional Networks (GCNs), GraphSAGE (Graph Sample and Aggregated), Gated Graph Neural Networks (GGNNs), Graph Isomorphism Networks (GIN), Message Passing Neural Networks (MPNNs), Graph Attention Networks (GAT), Graph Neural Networks for Molecular Graphs
Autoencoders: Vanilla Autoencoders, Variational Autoencoders (VAEs), Denoising Autoencoders, Sparse Autoencoders, Contractive Autoencoders, Adversarial Autoencoders
Generative Adversarial Networks (GANs): Vanilla GANs, Deep Convolutional GANs (DCGANs), Wasserstein GANs (WGANs), Conditional GANs (cGANs), InfoGAN, CycleGAN, StyleGAN, BigGAN, ProGAN
State space model: Mamba

Memory-Augmented Networks:
- Neural Turing Machines (NTMs)
- Differentiable Neural Computers (DNCs)
- Transformer-XL
Attention Mechanisms:
- Bahdanau Attention
- Luong Attention
- Transformer (self-attention)
- BERT (Bidirectional Encoder Representations from Transformers)

Few-Shot Learning:
- Matching Networks
- Prototypical Networks
- Relation Networks
Continual Learning:
- EWC (Elastic Weight Consolidation)
- LwF (Learning without Forgetting)
- iCaRL (Incremental Classifier and Representation Learning)
Federated Learning:
- FedAvg (Federated Averaging)
- FedProx (Federated Proximal)
- FedGAN (Federated GAN)
Pretrained Language Models:
- OpenAI GPT (Generative Pre-trained Transformer)
- BERT (Bidirectional Encoder Representations from Transformers)
- XLNet
- RoBERTa
- T5 (Text-To-Text Transfer Transformer)

Siamese Networks:
- Siamese Neural Networks
- Triplet Networks
- Contrastive Divergence Networks
Capsule Networks:
- Dynamic Routing Between Capsules (CapsNets)
- Capsule Networks with Attention
- Graph Capsule Networks
Neural Architecture Search (NAS):
- DARTS (Differentiable Architecture Search)
- ENAS (Efficient Neural Architecture Search)
- MNAS (Mobile Neural Architecture Search)
- NASNet
- AmoebaNet
Speech Recognition:
- DeepSpeech
- Listen, Attend, and Spell (LAS)
- Wav2Vec
Video Analysis:
- C(Convolutional 3D)
- I(Inflated ConvNets)
- TSN (Temporal Segment Networks)
Recommendation Systems:
- Collaborative Filtering using Neural Networks
- DeepFM (Factorization Machines)
- Neural Collaborative Filtering
Anomaly Detection:
- Autoencoder-based Methods
- Variational Autoencoders (VAEs) for Anomaly Detection
- One-Class SVM with Neural Networks
Health and Medical Imaging:
- CheXNet for Chest X-ray Analysis
- U-Net for Medical Image Segmentation
- CNNs for Brain Tumor Detection
Time Series Analysis:
- WaveNet for Audio Generation
- DeepAR for Time Series Forecasting
- TCN (Temporal Convolutional Network)

# Research
Efficient Training of Neural Networks:
- Pruning and Quantization: Techniques to reduce the size of models and the computational resources needed for training and inference.
- Federated Learning: Distributed training that allows for privacy preservation and efficiency by training models across multiple devices.
- Transfer Learning: Leveraging pre-trained models on new tasks to reduce the amount of data and computation required for training.

Mixture of Experts (MoE):
- MoE (sparse model) models aim to improve scalability and efficiency by having different 'expert' sub-models that specialize in different aspects of a task.

Language Models (LMs) and Large Language Models (LLMs):
- Research into improving the performance and training efficiency of large-scale language models, like GPT-3 and BERT.
- Exploration of new training techniques, regularization methods, and architectures to improve the capabilities of LLMs.

Foundational models:
- Ongoing improvements to the transformer architecture to increase efficiency, such as the Linformer, Performer, and Reformer.
- Research into making transformers more parameter and data-efficient.
- Mamba
- Sparse Transformers: Reducing the computational complexity by using sparsity in the attention mechanism.
- Vision Transformers (ViTs): Adapting the transformer architecture for computer vision tasks.

Generalization Capabilities:
- Meta-Learning: Teaching AI to learn new tasks with minimal data by generalizing from previous experiences.
- Few-Shot Learning: Improving the ability of models to perform tasks with very few examples.
- Generalizing models through general interfaces (like languages) where the model learns tasks based on input

Cognitive Neuroscience-Inspired Architectures:
- Research into architectures that mimic certain aspects of human cognition or brain structure, such as Hierarchical Temporal Memory (HTM) and models inspired by the Thousand Brains Theory of Intelligence.

Model Distillation:
- Techniques for transferring knowledge from large, complex models to smaller, more efficient ones without a significant loss in performance.

Self-Supervised Learning:
- Methods for training models using unlabeled data, where the learning algorithm generates its own labels from the data.

Robustness and Adversarial Machine Learning:
- Developing models that are resistant to adversarial attacks and can generalize well in the face of distribution shifts or noisy data.

Explainability and Interpretability:
- Techniques to understand and explain the decisions made by AI models, which is crucial for deployment in sensitive areas.

Fairness, Accountability, and Transparency:
- Ensuring that AI systems are fair and do not perpetuate or amplify biases. This includes research into ethical AI and algorithmic accountability.

Multi-Modal Learning:
- Multi modal input/output
- Combining information from various data sources (e.g., text, images, and audio) to improve learning and prediction.
- Multi modal transformers: q-transformer

Neuro-Symbolic AI:
- Combining neural networks with symbolic reasoning to create systems that can reason with the abstract, structured knowledge.

Energy-Efficient AI:
- Research aimed at reducing the carbon footprint of training and deploying AI models.

Alignment:
- RLAiF, RLHF, Self-rewarding language models

Cognitive capabilities:
- Logical reasoning and other modals

Limited data:
- Training with limited data: synthetic, more efficiently generalizing, GPT or CLIP style models
- Sample efficiency

Natural Language Processing (NLP):
- Text Processing
- Speech Recognition
- Machine Translation
- Question Answering
- Sentiment Analysis
Word Embeddings: Word2Vec, GloVe.
Seq2Seq Models: Encoder-Decoder architectures.
Attention Mechanisms: Vital for handling context in sequences.
- BERT (Bidirectional Encoder Representations from Transformers)
- ELMO (Embeddings from Language Models)
- Transformer-XL
- GPT-3

Computer Vision:
- Object Recognition
- Image Classification
- Image Generation
- Image Segmentation
- Visual Question Answering
Image Processing Techniques: Filters, edge detection.
Object Detection and Recognition: Techniques like YOLO (You Only Look Once), R-CNNs.
Object Detection and Segmentation:
    - YOLO (You Only Look Once)
    - SSD (Single Shot Multibox Detector)
    - Mask R-CNN
    - FCN (Fully Convolutional Networks)
    - U-Net
Image Generation:
    - DCGAN (Deep Convolutional Generative Adversarial Network)
    - ProGAN (Progressive GAN)
    - StyleGAN2
    - CycleGAN
    - Pix2Pix
Image Super-Resolution:
    - SRCNN (Super-Resolution Convolutional Neural Network)
    - VDSR (Very Deep Super-Resolution)

Robotics:
- Robotic Perception
- Motion Planning
- Robot Control
- Human-Robot Interaction
- Swarm Robotics

Knowledge Representation and Reasoning:
- Ontologies
- Knowledge Graphs
- Logic Programming
- Inference Systems

Expert Systems:
- Rule-Based Systems
- Decision Support Systems
- Diagnostic Systems

Planning and Scheduling:
- Automated Planning
- Resource Allocation
- Task Scheduling

Evolutionary Computing:
- Genetic Algorithms
- Genetic Programming
- Evolutionary Strategies

Neural Networks and Deep Learning:
- Feedforward Networks
- Recurrent Networks
- Convolutional Networks
- Generative Adversarial Networks (GANs)
- Transformer Models

Cognitive Computing:
- Emulating Human Thought Processes
- Mimicking Human Perception
- Cognitive Models

Interdisciplinary:
AI Ethics: Bias and Fairness, Explainability, Accountability, Privacy and Security
AI for Healthcare: Medical Imaging, Disease Prediction, Drug Discovery, Personalized Medicine
AI in Finance: Algorithmic Trading, Fraud Detection, Credit Scoring, Risk Management
AI in Gaming: Game Playing Agents, Procedural Content Generation, Player Behavior Modeling
AI in Education: Intelligent Tutoring Systems, Adaptive Learning Platforms, Educational Data Mining
AI in Cybersecurity: Threat Detection, Anomaly Detection, Security Analytics
Quantum AI: Quantum Machine Learning, Quantum Algorithms
Swarm Intelligence: Ant Colony Optimization, Particle Swarm Optimization
AI and Creativity: Computational Creativity, AI in Art and Music
AI Hardware: Neuromorphic Computing, Quantum Computing

# Model deployment
Web server: Flax, Django, Express.js, FastAPI
Cloud systems: AWS Lambda, AWS SageMaker, Azure Functions, Azure ML Service, Google Cloud Functions, Google Cloud AI Platform
Model deployment: TorchServe, TensorFlow Serving, ONNX Runtime (PyTorch models can be converted to ONNX format)

# Fundamental concepts
Mathematics:
Linear Algebra: matrices, vectors, eigenvalues, eigenvectors.
Calculus: derivatives and integrals, lagrange multiplier, hessian matrix, jacobian
Probability and Statistics: Probability distributions, statistical inference, Bayesian reasoning, bayesian inference, markov random fields, bayesian networks
Bayesian Inference: Probabilistic reasoning and updating beliefs.
Linear algebra: vectors, matrices, tensors, multiplying matrices, SVD, eigendecomposition, PCA
Probability: random variables, probability distributions, conditional probability, independence, variance, bayesian statistics
Information theory: information
Numerical computation: overflow and underflow, gradient based optimization, constrained optimization
Machine learning: cpacity, overfitting, underfitting, MLE, SGD
Discrete mathematics: concrete mathematics, recurrence, sums, number theory, binomial coefficient, special numbers, generating functions, discrete probability, asymptotics

Machine Learning:
Supervised Learning: classification
    - Linear Regression
    - Support Vector Machines
    - Decision Trees
    - Random Forests
    - Neural Networks
Unsupervised Learning: Clustering, dimensionality reduction.
    - k-Means Clustering
    - Hierarchical Clustering
    - Principal Component Analysis (PCA)
    - Generative Adversarial Networks (GANs)
    - Autoencoders
Neural Networks: Architectures, activation functions, training algorithms.
- Reinforcement Learning: multi-agent systems
- Transfer Learning
- Semi-Supervised Learning
- Self-Supervised Learning

Reinforcement Learning:
- Exploration-Exploitation Strategies
- Actor-Critic Models
Policy and Value Iteration: on policy/off policy, value iteration, policy iteration
Exploration vs. Exploitation Trade-off: Balancing the need to explore new actions and exploit known ones.
Algorithms: Q-learning, DQN, policy gradient methods, PPO, DDPG, TRPO
Markov decision process: reward functions, observability, reinforcement learning, continuous

Deep Learning:
Neural Network Architectures: Convolutional Neural Networks (CNNs), Recurrent Neural Networks (RNNs), Transformers.
Transfer Learning: Leveraging pre-trained models for new tasks.
Regularization Techniques: Dropout, batch normalization.
Deep networks: example of XOR, gradient-based learning, architecture design, back propagation, regularization, multitask learning, sparse representations, dropout, adversarial traning, basic algorithms

Optimization:
Gradient Descent: Variants like Stochastic Gradient Descent (SGD), Adam, RMSProp.
Metaheuristic Algorithms: Genetic algorithms, simulated annealing.
- Gradient Descent Variants (e.g., Adam, RMSProp)
- Evolutionary Algorithms
- Simulated Annealing

Algorithmic Techniques:
Dynamic Programming: Solving problems by breaking them into overlapping subproblems.
Monte Carlo Methods: Leveraging random sampling for estimation.
- Dynamic Programming for Optimization
- Monte Carlo Methods
- Markov Chain Monte Carlo (MCMC) Techniques

Probabilistic Graphical Models:
- Bayesian Networks
- Markov Random Fields

Data Structures for Efficient Computation:
- Tensor Data Structures for Neural Networks
- Sparse Matrix Representations
- Graph Data Structures (for representation and traversal)

Ethical and Social Implications:
Fairness and Bias: Understanding and mitigating biases in AI systems.
Interdisciplinary Understanding: Recognizing the societal impact of AI and ethical considerations.
