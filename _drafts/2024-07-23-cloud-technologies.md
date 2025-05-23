---
layout: post
title: Cloud Technologies
date: 2024-07-23 16:41:29
description:
tags:
categories:
---

# Service
Cloud computing enables provisioning computational-based services through the internet. It is a form of shared resource interfaced through a service. Advantages cloud technologies provide include
- Cost
- Speed and agility
- Security
- Maintenance
- Scalability and elasticity
- Reliability
- Multitenancy
- Easy access to resources

# Virtualization
Hypervisors allow virtualizing computer hardware like CPU, RAM, storage, devices, etc. Emulators allows for any OS to run on any architecture. Hypervisors allow creating virtual machines which allow running operating systems on top of. Type-1 hypervisors run on bare metal while Type-2 hypervisors run on top of an existing operating system. Type-1 are more geared towards enterprises and Type-2 are for end-users.

Type-1 hypervisor:
- AWS Nitro
- IBM z/VM
- Microsoft Hyper-V
- Nutanix AHV
- Oracle VM Server for SPARC
- Oracle VM Server for x86
- Red Hat Virtualization
- VMware ESXi
- Xen

Type-2 hypervisor:
- Parallels Desktop for Mac
- VirtualBox
- VMware Player
- VMware Workstation.

Type-1 and Type-2 hypervisor:
- KVM
- bhyve

## KVM
Kernel-based Virtual Machine is a hardware-assisted virtualization software solution for Linux on x86 hardware (but it has been ported to other architectures). It allows for device abstraction for network interfaces, disks, but not the processor. It is a loadable kernel module which can insert itself between the hardware and KVMs guest operating system. Various hardware virtualization extensions must be supported by processors to work. It also supports overcommitting and hotpluggable devices.

## Vagrant
Vagrant is a solution to using virtual machines in a development environment, providing reproducibility, transparency, easy management of multiple projects, sharing development environments, and consistent environments across various hypervisors (even cloud provided ones). Vagrant primarily relies on a Vagrantfile which functions similar to a Dockerfile, but describing entire (multi) operating system environments. One can specify hardware, operating system, programs to install, persistent volumns and shared files, networking, and even specify multiple operating systems and how they interact, opposed to applications in Docker. Vagrant can switch hyperviser providers, allowing one to use type-1 or type-2 hypervisors, allowing development on local computers or just as easily on a cloud provider.

# Storage options
Boot disk:
Persistent: high availability
Local SSD:
Cloud storage: huge capacity. cap read and write from multiple compute instances.

# Introduction to cloud infrastructure technologies course outline
1. Virtualization
    - Introduction and Learning Objectives
    - KVM
    - VirtualBox
    - Vagrant
    - Knowledge Check
2. Infrastructure as a Service (IaaS)
    - Introduction and Learning Objectives
    - Amazon Elastic Compute Cloud
    - Azure Virtual Machine
    - DigitalOcean Droplet
    - Google Compute Engine
    - IBM Cloud Virtual Servers
    - Oracle Cloud Compute Virtual Machines
    - OpenStack
    - Knowledge Check
3. Platform as a Service (PaaS)
    - Introduction and Learning Objectives
    - Cloud Foundry
    - Red Hat Openshift
    - The Heroku Platform
    - Knowledge Check
4. Containers
    - Introduction and Learning Objectives
    - Containers
    - Project Moby
    - Knowledge Check
5. Containers: Micro OSes for Containers
    - Introduction and Learning Objectives
    - Alpine Linux
    - BusyBox
    - Fedora CoreOS
    - Flatcar Container Linux
    - RancherOS and k3OS
    - Ubuntu Core
    - VMWare Photon OS
    - Knowledge Check
6. Containers: Container Orchestration
    - Introduction and Learning Objectives
    - Kubernetes
    - Kubernetes Hosted Solutions and Platforms
    - Docker Swarm
    - Nomad by HashiCorp
    - Cloud Container Orchestration Services
    - Knowledge Check
7. Unikernels
    - Introduction and Learning Objectives
    - Unikernels
    - Knowledge Check
8. Microservices
    - Introduction and Learning Objectives
    - Microservices
    - Knowledge Check
9. Software-Defined Networking and Networking for Containers
    - Introduction and Learning Objectives
    - Software-Defined Networking (SDN)
    - Networking for Containers
    - Docker Networking
    - Podman Networking
    - Kubernetes Networking
    - Cloud Foundry: Container to Container Networking
    - Knowledge Check
10. Software-Defined Storage and Storage Management for Containers
    - Introduction and Learning Objectives
    - Ceph
    - GlusterFS
    - Docker Volumes
    - Podman Volumes
    - Kubernetes Volumes
    - Cloud Foundry Volume Service
    - Container Storage Interface (CSI)
    - Knowledge Check
11. DevOps and CI/CD
    - Introduction and Learning Objectives
    - CI/CD: Jenkins
    - CI/CD: Travis CI
    - CI/CD: Concourse
    - Cloud Native CI/CD
    - Knowledge Check
12. Tools for Cloud Infrastructure I (Configuration Management)
    - Introduction and Learning Objectives
    - Ansible
    - Puppet
    - Chef
    - Salt
    - Knowledge Check
13. Tools for Cloud Infrastructure II (Build & Release)
    - Introduction and Learning Objectives
    - Terraform
    - CloudFormation
    - BOSH
    - Knowledge Check
14. Tools for Cloud Infrastructure III (Key-Value Pair Store)
    - Introduction and Learning Objectives
    - etcd
    - Consul KV
    - ZooKeeper
    - Knowledge Check
15. Tools for Cloud Infrastructure IV (Image Building)
    - Introduction and Learning Objectives
    - Building Images with Docker
    - Building Container Images with Podman
    - Building Container Images with Buildah
    - Packer
    - Image Registries
    - Knowledge Check
16. Tools for Cloud Infrastructure V (Debugging, Logging, and Monitoring for Containerized Applications)
    - Introduction and Learning Objectives
    - Sysdig
    - cAdvisor
    - Elasticsearch
    - Fluentd
    - Datadog
    - Prometheus
    - Splunk
    - OpenTelemetry
    - Dynatrace
    - Knowledge Check
17. Service Mesh
    - Introduction and Learning Objectives
    - Features and Implementation of Service Mesh
    - Consul
    - Envoy
    - Istio
    - Kuma
    - Linkerd
    - Traefik Mesh
    - Tanzu Service Mesh
    - Knowledge Check
18. Internet of Things (IoT)
    - Introduction and Learning Objectives
    - Internet of Things
    - Knowledge Check
19. Serverless Computing
    - Introduction and Learning Objectives
    - Serverless Computing
    - AWS Lambda
    - Google Cloud Functions
    - Azure Functions
    - Serverless and Containers
    - Knowledge Check
20. OpenTracing
    - Introduction and Learning Objectives
    - OpenTracing
    - Jaeger
    - Knowledge Check
21. How to Be Successful in the Cloud
    - Introduction and Learning Objectives
    - Developing Skills
    - Challenges
    - Knowledge Check
    - Course Feedback

# Cloud services
Cloud services provide scalability, handling of hardware, abstractions, shared solutions, cost savings, and more. They may lack features or force applications to be built in certain ways. Cloud servers should be considered ephemeral and failable, but also cheap and scalable. Cloud services, scaling, containerization, and orchestration should be viewed as exposing common necessary functionality for an internet-based service: DNS, storage, compute, servers, database, load-balancer, log, data analytics, monitoring, CDN, etc.

Providers:
Azure is no-code focused
AWS is complicated but complete
GCP is a happy medium
Digital ocean has good api and ease of use

There are also private providers like OpenStack which offers software for custom cloud servers, or in building bespoke cloud server setups.

IaaS: Infrastructure as a Service; everything above the hardware is managed through software like operating system, applications, databases, application runtime, virtual network, servers, storage
PaaS: Platform as a Service; platform for running software is provided and managed and configured by user; user has access to applications, databases, application runtimes, application configuration.
SaaS: Software as a Service; software is provided and user can interact through the software to manage and configure it

Terms:
Access to the cloud: CLI, website GUIs, SDK, API
Regions and availability zones: making services more redundant, lower latency, higher availability; geographic DNS region
Virtual private servers: pay for what you use per sec min or hour; easily scalable; can choose the images memory storage networking compute distro applications available; you can build your own images with Packer
Serverless: charged for compute time used; functions-as-a-service; docker containers, or supported programming languages exposing functions available to the serverless function are activated in response to some predefined trigger;
Networking: set address ranges of networks, define subnets, configure routes, set firewall rules, and construct VPNs to connect to external networks
Storage: object stores (files) like AWS S3 or Google Cloud Storage storage large amounts of data supporting mostly read access, block storage can be attached to compute instances, ephemeral; they also offer relational databases like MySQL, AWS Redshift, GCP BigQuery and in-memory and NoSQL databases like Redis or memcached
Identity and Access Management IAM: cloud services access should be provisioned accordingly
Automation: more complex topologies require verbose and error prone scripts, AWS CloudFormation and other platform equivalents allow providing a file description; Terraform and similar applications abstract and handle the verbosity and are platform agnostic
Cost control: compute time for load balancers servers databases etc., storage used, data transfer, up time;
    - pay as you go is cheapest for very limited use, but it is the most expensive rate; on AWS and DigitalOcean it is usually chaged per hour, GCP is charged per minute; AWS can be difficult to calculate exact price as you must decide before hand the compute you want and how long, GCP decreases per week of usage, down to 60%; on demand services may not be available when requested, but provisioned resources are; AWS provides spot pricing, where participants declare max bids of compute time rates for processing-heavy workloads;
    - network traffic can be hard to predict: websites reciving large file, image, video, pdf uploadss; replication intraregion iter-zone or inter-region for fault tolerance; storage that spans multiple regions

## Services
Reviewing services not directly related to web servers could help with understanding futurology.

Migrations: database, cloud

Compute
    - Container-based compute that enables auto scaling through serverless or automatically managed infrastructure
    - Self-managed compute
    - Automated compute for solutions like web apps based on Wordpress, or providing other similar common solutions.
    - Heavy compute for heavy workloads (GPUs, TPUs, lots of RAM) for ML, scientific computing, 3D visualization
    - Providing runtimes
    - Serverless: App Engine, Cloud Run, AWS Lambda
    - EC2 (Elastic Compute Cloud)
    - Batch processing: GC Batch or AWS Batch
    - Build containers
    - Run containers
Containers: a self-contained packaged application that can run on any supporting virtual machine, is scalable horizontally or vertically, modular, and replicatable.
    - Compute for containers
Content delivery
Database
    - Cloud managed SQL (PostgreSQL, MySQL, Sqlite) or custom SQL (Cloud SQL, AWS RDS)
    - Cloud managed NoSQL (Redis, Memcached, Memorystore) or custom NoSQL (DynamoDB, ElastiCache)
Machine learning
Networking
    - Common solutions like: CDN, DNS, Firewall, NAT, Load balancing, VPC, Domain management
Operations
Payment
Security, Identity, & Compliance
Serverless
Scalable: horizontally or vertically scaling; monitor the status of the applications to determine what necessary configuration to match the server load
Storage
    - Object storage
    - File system: that can be mounted on other servers (userful for aggregating logs, extending storage, etc.)
    - Local SSD
    - Persistent storage
    - Backup
    - File cache
    - Block storage
Analytics
Monitoring

Solutions:
Machine learning: containers, compute GPU TPU, storage for model data
Web development: compute, CDN, networking, storage, database, security, payment, analytics, monitoring
Simulation: requires lots of compute
3D visualation: requires lot of compute
Scientific computing: requires lots of data and compute

Customer enablement
Blockchain
Satellite
Quantum technologies
Management and governance
Frontend web and mobile
XR: extended reality like mixed reality, AR and VR
Application integration
Cost management
Cloud migration
Cloud operations
Database migrations
Data lakes and analytics
DevOps
Archiving
E-Commerce
Edge computing
High performance computing
Hybrid cloud architectures
IoT
Modern application development
Multicloud
Remote work
Resilience
Scientific computing
Websites

AWS:
Analytics
Application Integration
Blockchain
Business Applications
Cloud Financial Management
Contact Center
Developer Tools
End User Computing
Front-End Web & Mobile
Games
Internet of Things
Management & Governance
Media Services
Migration & Transfer
Quantum Technologies
Robotics
Satellite
Supply Chain

GCloud:
Data Analytics
Developer Tools
Distributed Cloud
Hybrid and Multicloud
Industry Specific
Integration Services
Management Tools
Maps and Geospatial
Media Services
Migration
Operations
Productivity and Collaboration
Web3

Integration Services:
Amazon MQ: Amazon MQ is a managed message broker service that makes it easy to run ActiveMQ and RabbitMQ on AWS infrastructure. It automatically handles provisioning for high availability, setup, software and security updates, and other maintenance tasks.
Amazon SQS (Simple Queue Service): With SQS, you can send, store, and receive messages between microservices and serverless applications. It’s a fully managed service that has two types of message queues. Standard queues are best for maximum throughput and at-least-once delivery, while FIFO guarantees that messages are processed exactly once in the exact sending order.
Amazon SNS (Simple Notification Service): Simple notification service provides high-throughput pub/sub fanout messaging to many subscribers, including Amazon SQS, AWS Lambda functions, HTTPS endpoints, and Amazon Kinesis Data Firehose. It can also send messages to users via email, mobile push notifications, and SMS. It’s a fully managed service, so you pay for use.
Amazon SES (Simple Email Service): Amazon Simple Email Service is a flexible email service that supports mass email communication, marketing, and transactional emails at scale. It offers some analytics and calculates open and click-through rates to measure audience engagement in your email messages.
AWS Secrets Manager: This service protects the secrets needed to access various APIs and resources required for your application. AWS Secrets Manager provides an API to retrieve secrets, so you don’t have to hardcode them in plain text configuration files. Access to these secrets controlled with fine-grained permissions.

Management & Governance:
AWS CloudFormation: CloudFormation enables you to describe your desired resources and their dependencies with a code template as a single stack. You can provision, manage, update, and delete these stacks as single units without managing underlying resources individually.
AWS CloudWatch: CloudWatch provides a unified view of AWS resources and services of your application. It’s helpful to optimize resources, detect abnormal behavior, set different alarms, monitor application health, and troubleshoot issues by viewing logs and various metrics.

Solutions:
Advertising and Marketing: Reimagine data-driven marketing
Aerospace and Satellite: AWS provides secure, flexible, scalable, and cost-efficient cloud solutions to help commercial and government customers build satellites, conduct space and launch operations, and reimagine space exploration
Automotive: Build intelligent connected experiences and accelerate time to market for every touchpoint of the customer journey
Consumer Packaged Goods: Solutions to transform manufacturing, optimize end-to-end supply chain, and drive more profitable brand engagements and transformative interactions with brand consumers
Education: Solutions to help facilitate teaching, learning, student engagement, and better learning outcomes as well as modernize enterprise wide IT operations
Energy and Utilities: Revamp legacy operations and accelerate the development of innovative renewable energy business models
Financial Services: Develop innovative and secure solutions across banking, capital markets, insurance, and payments.
Games: Services to enable game development across all genres and platforms, from AAA games to small independent studios
Government: Services designed to help government agencies modernize, meet mandates, reduce costs, drive efficiencies, and delivery mission outcomes
Healthcare and Life Sciences: Solutions for increasing the pace of innovation, data lifecycle management, incorporating new technology into care delivery, and improving security and compliance
Industrial: Services and Solutions for customers across Manufacturing, Automotive, Energy, Power & Utilities, Transportation & Logistics
Manufacturing: Optimize production and speed time-to-market
Media and Entertainment: Transform media & entertainment with the most purpose-built capabilities and partner solutions of any cloud
Nonprofit: Services enabling more mission for the money to minimize costs and optimize scale and donor engagement to further nonprofits and NGO's serving their causes
Power and Utilities: Solutions to extract deep insights from data to manage distributed energy networks and to deliver engaging new customer experiences
Retail: Cloud solutions that help retailers accelerate innovation, optimize operations, and delight customers
Semiconductor: Speed innovation, optimize production, and deliver cutting-edge products and services
Sports: Fuel innovative fan, broadcast, and athlete experiences
Sustainability: AWS provides knowledge and tools for organizations of all sizes across all sectors to build and implement solutions that meet their sustainability goals
Telecommunications: Accelerate innovation, scale with confidence, and add agility with cloud-based telecom solutions
Travel and Hospitality: Solutions to help travel and hospitality companies gain a competitive edge by enhancing customer experiences and operational efficiency

AWS featured:
Amazon EC2: Virtual servers in the cloud
Amazon Simple Storage Service (S3): Scalable storage in the cloud
Amazon Aurora: High performance managed relational database with full MySQL and PostgreSQL compatibility
Amazon DynamoDB: Managed NoSQL database
Amazon RDS: Managed relational database service for PostgreSQL, MySQL, MariaDB, SQL Server, Oracle, and Db2
AWS Lambda: Run code without thinking about servers
Amazon VPC: Isolated cloud resources
Amazon Lightsail: Launch and manage virtual private servers
Amazon SageMaker: Build, train, and deploy machine learning models at scale

Featured products:
Compute Engine: Virtual machines running in Google’s data center.
Cloud Storage: Object storage that’s secure, durable, and scalable.
BigQuery: Data warehouse for business agility and insights.
Cloud Run: Fully managed environment for running containerized apps.
Google Kubernetes Engine: Managed environment for running containerized apps.
Vertex AI platform: Unified platform for ML models and generative AI.
Looker: Platform for BI, data applications, and embedded analytics.
Apigee API Management: Manage the full life cycle of APIs anywhere with visibility and control.
Cloud SQL: Relational database services for MySQL, PostgreSQL, and SQL Server.
Cloud SDK: Command-line tools and libraries for Google Cloud.
Cloud CDN: Content delivery network for delivering web and video.
Cloud Functions: Event-driven compute platform for cloud services and apps.

AI and Machine Learning:
Vertex AI Platform: Unified platform for training, hosting, and managing ML models.
Generative AI on Vertex AI: Build, tune, and deploy foundation models on Vertex AI.
Vertex AI Search and Conversation: Generative AI apps for enterprise search and conversational AI.
AutoML: Custom machine learning model training and development.
Dialogflow: Conversation applications and systems development suite for virtual agents.
Media Translation: Add dynamic audio translation directly to your content and applications.
Natural Language AI: Sentiment analysis and classification of unstructured text.
Recommendations AI: Deliver highly personalized product recommendations at scale.
Speech-to-Text: Speech recognition and transcription supporting 125 languages.
Text-to-Speech: Speech synthesis in 220+ voices and 40+ languages.
Translation AI: Language detection, translation, and glossary support.
Video AI: Video classification and recognition using machine learning.
Vision AI: Custom and pre-trained models to detect emotion, text, more.
Vertex AI Notebooks: A single interface for your data, analytics, and machine learning workflow.
Vertex Explainable AI: Tools and frameworks to understand and interpret your machine learning models.
Business Intelligence

Analytics:
Amazon Kinesis: With Kinesis, you can analyze real-time data streams with low-latency at any scale. It enables applications to collect, buffer, and process streaming data as it arrives and react to it instantly instead of waiting hours for data to be collected before processing begins.
Amazon Redshift: Redshift provides a cost-effective way to build a data warehouse and run standard SQL queries against it. You can further analyze these results in various business intelligence tools to gain new insights from the underlying data.
Amazon Athena: Athena is a serverless solution to analyze large datasets in Amazon S3 using standard SQL. It’s fast, easy to use, and doesn’t require complex ETL processes to prepare your data before analysis. You pay only for the amount of data scanned when running each query.
AWS Glue: With serverless AWS Glue, data integration becomes much more comfortable. It helps discover and extract data from multiple sources, prepare this data for use, and organize it into databases, data warehouses, and data lakes for further analysis by specialized tools and custom applications.

Compute:
App Engine: Serverless application platform for apps and back ends.
Bare Metal Solution: Infrastructure to run specialized workloads on Google Cloud.
Batch: Fully-managed batch service to schedule, queue, and execute batch jobs at scale.
Cloud GPUs: GPUs for ML, scientific computing, and 3D visualization.
Cloud Run: Fully managed environment for running containerized apps.
Compute Engine: Virtual machines running in Google’s data center.
Deep Learning VM Image: Preconfigured VMs for deep learning applications.
Migrate to Virtual Machines: Server and virtual machine migration to Compute Engine.
Recommender: Proactive, easily actionable recommendations to keep your cloud optimized.
Shielded VMs: Reinforced virtual machines on Google Cloud.
Sole-tenant Nodes: Dedicated hardware for compliance, licensing, and management.
Spot VMs: Compute instances for batch jobs and fault-tolerant workloads.
SQL Server on Google Cloud: Options for running SQL Server virtual machines on Google Cloud.
Tau VM: Compute Engine virtual machines optimized for scale-out workloads.
VMware Engine: Migrate and run your VMware workloads natively on Google Cloud.
Amazon EC2: Virtual servers in the cloud
Amazon EC2: Auto Scaling Scale compute capacity to meet demand
Amazon Lightsail: Launch and manage virtual private servers
AWS App Runner: Build and run containerized web apps at scale
AWS Batch: Run batch jobs at any scale
AWS Elastic Beanstalk: Run and manage web apps
AWS Lambda: Run code without thinking about servers
AWS Local Zones: Run latency sensitive applications on a Local Zone
AWS Outposts: Run AWS infrastructure on-premises
AWS Serverless Application Repository: Discover, deploy, and publish serverless applications
AWS Sim: Space Weaver: Build dynamic, large-scale spatial simulations on AWS managed infrastructure
AWS Snow Family: Physical devices to aggregate and process data in edge locations, then transfer to AWS
AWS Wavelength: Deliver ultra-low latency applications for 5G devices
VMware Cloud on AWS: Build a hybrid cloud without custom hardware
Amazon EC2 (Elastic Compute Cloud): This service lets you rent virtual servers in the cloud. Most of them are virtual machines, ranging from tiny two vCPU and 0.5Gb of RAM to beefy 96-core machines with 384 Gb of RAM. You can also rent physical dedicated servers with EC2. The service is designed for any workload, although you’ll still need to choose the best instances for your specific tasks. Besides generic ones, EC2 also offers cost-saving ARM instances and bare metal Mac minis.
Amazon ECR (Elastic Container Registry): ECR is a highly available and high-performance container registry for easy storage, management, and deployment of your container images. Images can be private to your organization or shared worldwide. It works great with Amazon ECS, AWS Lambda, and AWS Fargate, enabling fast single-click deployments. It’s a fully managed service, and you pay only for the amount of data stored and data transferred over the internet.
Amazon ECS (EC2 Container Service): ECS is a fully managed container orchestration service that enables you to run, scale, and secure Docker applications on Amazon EC2 and AWS Fargate. You can define multiple related containers and configure their various deployment parameters in task definitions. Being a foundational pillar for critical Amazon services, it can natively integrate with Route 53, Secrets Manager, IAM, CloudWatch, and other services.
AWS Fargate: Fargate removes the need to manually provision and manage servers, freeing time to focus on building your application. It’s a serverless compute engine for containers that works both with ECS and EKS (Amazon Elastic Kubernetes Service). It automatically allocates the right amount of isolated compute resources for each container, so there is no additional cost for over-provisioning to handle more load. By design, running each application in isolation also improves its security.
AWS Lambda: Lambda is a serverless compute service that enables you to run your code on the AWS platform without worrying about provisioning, maintenance, and scaling the servers. Your code gets automatically executed on incoming events or HTTP requests at any scale. Most popular languages like Javascript, C#, Java, Go, and Python are supported, and deployment is effortless.
AWS Elastic Beanstack: This easy-to-use service automatically handles the deployment of web applications. It handles provisioning, load balancing, auto-scaling, and app health monitoring without losing full control over the underlying resources. Elastic Beanstack the fastest and most straightforward way to deploy your application to AWS, and it doesn’t require extensive knowledge of the platform and its services.

Containers:
Artifact Registry: Store, manage, and secure container images and language packages.
Cloud Build: Solution for running build steps in a Docker container.
Cloud Code: IDE support to write, run, and debug Kubernetes applications.
Cloud Deploy: Fully managed continuous delivery to GKE and Cloud Run.
Cloud Run: Fully managed environment for running containerized apps.
Deep Learning Containers: Containers with data science frameworks, libraries, and tools.
Google Kubernetes Engine (GKE): Managed environment for running containerized apps.
Knative: Components to create Kubernetes-native cloud-based software.
Kubernetes applications on Google Cloud Marketplace: Containerized apps with prebuilt deployment and unified billing.
Migrate to Containers: Components for migrating VMs into system containers on GKE.
Amazon Elastic Container Registry: Easily store, manage, and deploy container images
Amazon Elastic Container Service (ECS): Highly secure, reliable, and scalable way to run containers
Amazon ECS Anywhere: Run containers on customer-managed infrastructure
Amazon Elastic Kubernetes Service (EKS): The most trusted way to run Kubernetes
Amazon EKS Anywhere: Kubernetes on your infrastructure
Amazon EKS Distro: Run consistent Kubernetes clusters
AWS App2Container: Containerize and migrate existing applications
AWS App Runner: Build and run containerized web apps at scale
AWS Copilot: Easily deploy and operate containerized applications
AWS Fargate: Serverless compute for containers
Red Hat Open: Shift Service on AWSManaged Red Hat Open: Shift clusters

Databases:
AlloyDB for PostgreSQL: Fully managed, PostgreSQL-compatible database for demanding enterprise workloads.
Bare Metal Solution: Infrastructure to run specialized workloads on Google Cloud.
Cloud Bigtable: Cloud-native wide-column database for large-scale, low-latency workloads.
Cloud Spanner: Cloud-native relational database with unlimited scale and 99.999% availability.
Cloud SQL: Fully managed database for MySQL, PostgreSQL, and SQL Server.
Database Migration Service: Serverless, minimal downtime migrations to the cloud.
Firestore: Cloud-native document database for building rich mobile, web, and IoT apps.
Memorystore: In-memory database for managed Redis and Memcached.
Datastream: Serverless change data capture and replication service.
Firebase Realtime Database (not official GCloud product): NoSQL database for storing and syncing data in real time.
Amazon Aurora: High performance managed relational database with full My: SQL and Postgre: SQL compatibility
Amazon Aurora Serverless V2: Instantly scale to >100,000 transactions per second
Amazon Document: DB (with Mongo: DB compatibility)Fully managed document database
Amazon DynamoDB: Managed NoSQL database
Amazon ElastiCache: In-memory caching service
Amazon Keyspaces (for Apache Cassandra): Managed Cassandra-compatible database
Amazon Memory DB for Redis: Redis-compatible, durable, in-memory database that delivers ultra-fast performance
Amazon Neptune: Fully managed graph database service
Amazon Quantum Ledger Database (QLDB): Fully managed ledger database
Amazon RDS: Managed relational database service for PostgreSQL, MySQL, MariaDB, SQL Server, Oracle, and Db2
Amazon RDS on Outposts: Automate on-premises database management
Amazon Redshift: Fast, simple, cost-effective data warehousing
Amazon Timestream: Fully managed time series database
AWS Database Migration Service: Migrate databases with minimal downtime
Amazon DynamoDB: DynamoDB is a high-performance managed NoSQL database that supports both key-value and document store. It can handle more than 10 trillion requests per day, with peaks of more than 20 million requests per second. This durable and secure database with built-in in-memory caching, backups, and restore is the number one choice for many fastest-growing startups that demand low-latency data storage at any scale.
Amazon ElastiCache: This service offers fully managed Redis and Memcached as high-throughput and low-latency in-memory data stores for your cloud applications. ElastiCache’s primary purpose is to boost web applications’ performance by caching mission-critical data on top of slower databases. It is also suitable for session storage, real-time analytics, and other tasks.
Amazon Aurora: Aurora is a MySQL and PostgreSQL-compatible high-performance distributed relational database. Out of the box, it’s much faster than both MySQL and PostgreSQL and offers high security, availability, and reliability of traditional commercial databases. On top of that, it provides replication across three Availability Zones, point-in-time recovery, and continuous backup to Amazon S3.
Amazon RDS (Relational Database Service): This service manages relational databases in the cloud. It takes care of hardware provisioning, database setup, patching, and backups. Amazon RDS supports various database engines like Amazon Aurora, PostgreSQL, MySQL, Microsoft SQL Server, Oracle Database, and MariaDB.

Developer tools:
Artifact Registry: Store, manage, and secure container images and language packages.
Assured Open Source Software: Incorporate the same OSS packages that Google uses into your own developer workflows.
Cloud Build: Continuous integration and continuous delivery platform.
Cloud Code: IDE support to write, run, and debug Kubernetes applications.
Cloud Deploy: Fully managed continuous delivery to Google Kubernetes Engine.
Cloud Deployment Manager: Service for creating and managing Google Cloud resources.
Cloud Functions for Firebase: Write and run app logic server-side without needing to set up your own server.
Cloud Identity: Unified platform for IT admins to manage user devices and apps.
Cloud Scheduler: Cron job scheduler for task automation and management.
Cloud SDK: Command-line tools and libraries for Google Cloud.
Cloud Source Repositories: Private Git repository to store, manage, and track code.
Cloud Tasks: Task management service for asynchronous task execution.
Cloud Workstations: Managed and secure development environments in the cloud.
Duet AI in Google Cloud (Preview): AI-powered collaborator, available across Google Cloud and your IDE.
Firebase Authentication: End-to-end user identity solution to your app for user identification, sign-in, and onboarding.
Firebase Crashlytics: Prioritize and fix stability issues faster. (not official GCloud product)
Firebase Test Lab: On-demand testing infrastructure for Android apps.
Gradle App Engine Plugin: Use Gradle for your App Engine projects.
Infrastructure Manager: Automate deployment and management of Google Cloud infrastructure resources using Terraform
Maven App Engine Plugin: Use Maven for your App Engine projects.
Skaffold: Open source command line tool for Cloud Code, Cloud Build, and Cloud Deploy.
Tekton: Kubernetes-native resources for declaring CI/CD pipelines.
Tools for Eclipse: Plugin for Google Cloud development inside the Eclipse IDE.
Tools for PowerShell: Full cloud control from Windows PowerShell.

Networking:
Cloud Armor: Security policies and defense against web and DDoS attacks.
Cloud CDN: Content delivery network for serving web and video content.
Cloud Connectivity: Connectivity options for VPN, peering, and enterprise needs.
Cloud Domains: Easy domain name registration and management.
Cloud DNS: Domain name system for reliable and low-latency name lookups.
Cloud Firewall: Global and flexible firewalls to protect your cloud resources.
Cloud IDS: Cloud IDS (Cloud Intrusion Detection System) provides cloud-native network threat detection with industry-leading security.
Cloud Load Balancing: Service for distributing traffic across applications and regions.
Cloud NAT: NAT service for giving private instances internet access.
Network Connectivity Center: Use Google’s network as your own. Reimagine how you deploy, manage, and scale your networks.
Network Intelligence Center: Network monitoring, verification, and optimization platform.
Network Service Tiers: Cloud network options based on performance, availability, and cost.
Private Service Connect: Secure connection between your VPC and services.
Service Directory: Platform for discovering, publishing, and connecting services.
Virtual Private Cloud (VPC): Virtual network for Google Cloud resources and cloud-based services.
VPC Service Controls: Protect sensitive data in Google Cloud services using security perimeters.
Amazon VPC: Isolated cloud resources
Amazon VPC Lattice: Simplify service-to-service connectivity, security, and monitoring
Amazon API Gateway: Build, deploy, and manage APIs
Amazon Cloud: Front: Global content delivery network
Amazon Route 53: Scalable domain name system (DNS)
AWS App Mesh: Monitor and control microservices
AWS Cloud Map: Service discovery for cloud resources
AWS Cloud WAN: Easily build, manage, and monitor global wide area networks
AWS Direct Connect: Dedicated network connection to AWS
AWS Global Accelerator: Improve application availability and performance
AWS Private 5G: Easily deploy, manage, and scale a private cellular network
AWS Private: Link: Securely access services hosted on AWS
AWS Transit Gateway: Easily scale VPC and account connections
AWS Verified Access: Provide secure access to corporate applications without a VPN
AWS VPN: Securely access your network resources
Elastic Load Balancing (ELB): Distribute incoming traffic across multiple targets
Amazon Route 53: Route 53 is an advanced, highly available, and scalable DNS Service. Besides simple IP lookups, it has sophisticated routing types like GeoDNS, Geoproximity, and Latency Based Routing. Together with health checks and DNS failover, this enables different fault-tolerant low-latency architectures configurable with a simple visual editor.
Amazon CloudFront: CloudFront is a fast and secure programmable content delivery network (CDN) that caches your content and APIs on globally scaled edge locations for more rapid responses. It also offers protection against multiple types of attacks, including network, transport, and application-layer DDoS attacks. CloudFront is cost-effective and deeply integrated with other AWS services like S3, EC2, Route 53, and Elastic Load Balancing.
Amazon API Gateway: API Gateway makes it easy to create, publish, monitor, and secure RESTful and WebSocket APIs. It handles traffic management, CORS, authorization and access control, throttling, monitoring, and API version management. API Gateway can process hundreds of thousands of concurrent API calls. It’s a fully managed service, and you pay only for the API calls your application receives and the amount of outgoing traffic.
AWS Elastic Load Balancing: Elastic Load Balancing distributes incoming application traffic across multiple servers, containers, or Lambda functions. It enables the application to handle more concurrent requests without affecting response time. Multiple request handlers are crucial to make the application highly available, reliable, and fault-tolerant.
Amazon VPC (Virtual Private Cloud): With Amazon VPC, you can create logically isolated virtual networks inside AWS. You have full control over the configuration of the network, its subnets, and routing tables. It’s possible to create a public-facing subnet with internet access for your web servers while keeping most of the backend infrastructure in a private subnet with no internet connection, making it much more secure.

Operations:
Cloud Debugger: Real-time application state inspection and in -production debugging.
Cloud Logging: Google Cloud audit, platform, and application logs management.
Cloud Monitoring: Infrastructure and application health with rich metrics.
Cloud Profiler: CPU and heap profiler for analyzing application performance.
Cloud Trace: Tracing system collecting latency data from applications.
Error Reporting: Real time exception monitoring and alerting.

Serverless:
API Gateway: Develop, deploy, secure, and manage APIs with a fully managed gateway.
App Engine: Serverless application platform for apps and back ends.
Cloud Functions: Platform for creating functions that respond to cloud events.
Cloud Run: Fully managed environment for running containerized apps.
Workflows: Workflow orchestration for serverless products and API services.
AWS Lambda: Run code without thinking about servers
Amazon API Gateway: Build, deploy, and manage APIs
Amazon DynamoDB: Managed NoSQL database
Amazon EventBridge: Serverless event bus for SaaS apps & AWS services
Amazon Simple Notification Service (SNS): Pub/sub, SMS, email, and mobile push notifications
Amazon Simple Queue Service (SQS): Managed message queues
Amazon Simple Storage Service (S3): Scalable storage in the cloud
AWS Application Composer: Visually design and build serverless applications quickly
AWS AppSync: Fully-managed, scalable GraphQL APIs
Amazon Redshift: Fast, simple, cost-effective data warehousing
AWS Fargate: Serverless compute for containers
AWS Step Functions: Coordination for distributed applications

Storage:
Cloud Storage: Object storage that’s secure, durable, and scalable.
Storage Transfer Service: Tools and services for transferring your data to Google Cloud.
Cloud Storage for Firebase: Object storage for storing and serving user-generated content.
Filestore: File storage that is highly scalable and secure.
Local SSD: Block storage that is locally attached for high-performance needs.
Persistent Disk: Block storage for virtual machine instances running on Google Cloud.
Google Cloud Backup and DR: Managed backup and disaster recovery for application-consistent data protection.
NetApp Volumes: File storage service that supports NFS, SMB, and multi-protocol environments.
Parallelstore: High performance, managed parallel file service.
Block storage: High-performance storage for AI, analytics, databases, and enterprise applications.
Amazon Simple Storage Service (S3): Scalable storage in the cloud
Amazon S3 Glacier storage classes: Low-cost archive storage in the cloud
Amazon Elastic Block Store (EBS): EC2 block storage volumes
Amazon Elastic File System (EFS): Fully managed file system for EC2
Amazon FSx for Lustre: High-performance file system integrated with S3
Amazon FSx for Net: App ONTAPFully managed storage built on Net: App’s popular ONTAP file system
Amazon FSx for Open ZFS: Fully managed storage built on the popular OpenZFS file system
Amazon FSx for Windows File Server: Fully managed Windows native file system
Amazon File Cache: High-speed cache for datasets stored anywhere
AWS Backup: Centralized backup across AWS services
AWS Elastic Disaster Recovery (DRS): Scalable, cost-effective application recovery
AWS Snow Family: Physical edge computing and storage devices for rugged or disconnected environments
AWS Storage Gateway: Hybrid storage integration
Amazon S3 (Simple Storage Service): Amazon S3 is a generic object storage service designed for incredible durability, high scalability, availability, security, and performance. It has various storage classes for different use cases. S3 automatically stores copies of objects across multiple systems. It offers a fine-grained access control system and auditing capabilities for compliance. Using Amazon Athena, you can analyze data in S3 at any scale with simple SQL queries.
Amazon S3 Glacier: For data archiving and long-term backups at extremely low-cost, Amazon offers S3 Glacier with extreme durability. There are three options for access to archives. Expedited retrievals typically return data in 1-5 minutes, standard generally complete in 3-5 hours, while the cheapest bulk retrievals take 5-12 hours to get large amounts of data.
Amazon EBS (Elastic Block Storage): EBS is generic long-term high-performance block storage for EC2 instances. It’s designed for both throughput and transactional workloads and can scale to petabytes of data. You can choose different storage types with various throughput and latency suitable for your needs. The EBS replicates volumes within the Availability Zone, and you can use EBS Snapshots to backup your volumes to S3.
Amazon EFS (Elastic File System): Amazon Elastic File System is a fully managed scalable elastic NFS. It grows and shrinks automatically, eliminating the need to provision and manually manage capacity. EFS is designed to provide massively parallel shared access to thousands of EC2 instances with a high level of aggregate throughput and IOPS, maintaining consistent latency.

Security, Identity, and Compliance:
AWS Identity and Access Management (IAM): Securely manage access to services and resources
Amazon Cognito: Identity management for your apps
Amazon Detective: Investigate potential security issues
Amazon Guard: Duty: Managed threat detection service
Amazon Inspector: Automate vulnerability management
Amazon Macie: Discover and protect your sensitive data at scale
Amazon Security Lake: Automatically centralize your security data with a few clicks
Amazon Verified Permissions: Fine-grained permissions and authorization for your applications
AWS Artifact: On-demand access to AWS’ compliance reports
AWS Audit Manager: Continuously audit your AWS usage
AWS Certificate Manager: Provision, manage, and deploy SSL/TLS certificates
AWS Cloud HSM: Hardware-based key storage for regulatory compliance
AWS Directory Service: Host and manage active directory
AWS Firewall Manager: Central management of firewall rules
AWS Key Management Service: Managed creation and control of encryption keys
AWS Network Firewall: Network security to protect your VPCs
AWS Payment Cryptography: Simplify cryptography operations
AWS Private Certificate Authority: Create private certificates to identify resources and protect data
AWS Resource Access Manager: Simple, secure service to share AWS resources
AWS Secrets Manager: Rotate, manage, and retrieve secrets
AWS Security Hub: Unified security and compliance center
AWS Shield: DDoS protection
AWS IAM Identity Center: Manage single sign-on access to AWS accounts and apps
AWS WAF: Filter malicious web traffic

## Amazon Web Services
AWS

## Google Cloud Products
GCP

- https://cloud.google.com/products/calculator
- https://cloud.google.com/kubernetes-engine/pricing
- https://cloud.google.com/storage/pricing/
- https://cloud.google.com/storage/docs/storage-classes#standard
- https://cloud.google.com/functions/docs/tutorials/ocr/
- https://cloud.google.com/run/docs/fit-for-run
- https://cloud.google.com/kubernetes-engine?hl=en
- https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview

Follow instructions at https://cloud.google.com/sdk/docs/install to set gcloud CLI.

Cloud Functions: an entry point to the google cloud, also connects google cloud services to each other.
Cloud Run: similar to Functions but specialized for self-contained computations
AI Platform Predictions
Kubernetes Engine: flexible scaling
Artifact Registry: store containers and similar items
Compute Engine: compute with its own ephemeral storage
Cloud Storage: flexible, persistent storage accessible to most google products
App Engine

## Google Cloud Functions AI inference
```bash
gcloud init
gcloud auth login
gcloud config set project YOUR_PROJECT_ID
gcloud services enable cloudfunctions.googleapis.com
gcloud services enable cloudbuild.googleapis.com

mkdir my_ai_model_function
cd my_ai_model_function
# main.py: This is your function code.
# requirements.txt: This lists the Python dependencies for your function.
# model.joblib: This is your trained AI model, serialized with joblib. You will need to train and serialize this model elsewhere and then place the file in the directory.
```

```python
# main.py
import os
import joblib
from flask import escape, jsonify

# Load your trained model; make sure the path matches where you've put your model file.
model = joblib.load('model.joblib')

def ai_model_inference(request):
    request_json = request.get_json(silent=True)

    if request_json and 'features' in request_json:
        # Assuming "features" is a list of features for the model to make a prediction.
        features = request_json['features']
        prediction = model.predict([features])
        return jsonify({'prediction': prediction.tolist()})

    else:
        return 'No features provided for inference.', 400
```

```txt
scikit-learn==0.24.2
joblib==1.0.1
numpy==1.20.3
```

```bash
gcloud functions deploy ai_model_inference \
    --runtime python39 \
    --trigger-http \
    --memory 2048MB \
    --timeout 540s \
    --max-instances 1

curl -H "Content-Type: application/json" \
     -d '{"features": [5.1, 3.5, 1.4, 0.2]}' \
     YOUR_FUNCTION_URL
```

You can monitor the execution of your function and view logs in the Google Cloud Console under the Cloud Functions section. If you need to update your function or model, you can redeploy using the same gcloud functions deploy command.

Additional Considerations
    Ensure that the model size and memory requirements fit within the limits of Google Cloud Functions.
    Keep in mind the cold start times. If your function hasn't been invoked recently, the first invocation may take longer as the environment is initialized.
    For more complex or larger models, consider using Google Cloud Run or AI Platform Predictions, which can handle heavier workloads.

By following these steps, you can deploy an open-source AI model to Google Cloud Functions and run inferences on-demand without maintaining a persistent server.


For infrequent and sporadic AI model inferences, Google Cloud Functions or Google Cloud Run are typically the most cost-effective choices due to their per-invocation billing and ability to scale to zero, which means you don't pay for anything when the services are not in use. They both offer a free tier, which can be sufficient for light workloads.

AI Platform Predictions can be cost-effective if you leverage its features and scale, but it might be overkill for infrequent use unless you need its specific integrated services.

Ultimately, the choice of product will depend on your specific requirements, such as the size and complexity of your AI model, the need for integration with other Google Cloud services, the expected latency, and your budget. The serverless options (Cloud Functions and Cloud Run) will generally offer the best cost savings for infrequent usage, while GKE and App Engine may offer more functionality and flexibility at a higher cost.


