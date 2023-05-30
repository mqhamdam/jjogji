# jjogji (쪽지)

[![Test, Build and Release apk](https://github.com/mqhamdam/jjogji/actions/workflows/main.yml/badge.svg)](https://github.com/mqhamdam/jjogji/actions/workflows/main.yml)
[![Codemagic build status](https://api.codemagic.io/apps/6468b090834e7248f637ef57/6468b090834e7248f637ef56/status_badge.svg)](https://codemagic.io/apps/6468b090834e7248f637ef57/6468b090834e7248f637ef56/latest_build)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/mqhamdam/jjogji)
![GitHub](https://img.shields.io/github/license/mqhamdam/jjogji?style=plastic)
![GitHub repo size](https://img.shields.io/github/repo-size/mqhamdam/jjogji?style=plastic)
![GitHub issues](https://img.shields.io/github/issues-raw/mqhamdam/jjogji?style=plastic)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/mqhamdam/jjogji?style=plastic)
![GitHub Discussions](https://img.shields.io/github/discussions/mqhamdam/jjogji?style=plastic)
![GitHub all releases](https://img.shields.io/github/downloads/mqhamdam/jjogji/total?style=plastic)
![jsDelivr hits (GitHub)](https://img.shields.io/jsdelivr/gh/hm/mqhamdam/jjogji?label=Hits)
![Scrutinizer code quality (GitHub/Bitbucket)](https://img.shields.io/scrutinizer/quality/g/mqhamdam/jjogji)
![GitHub top language](https://img.shields.io/github/languages/top/mqhamdam/jjogji)
![GitHub language count](https://img.shields.io/github/languages/count/mqhamdam/jjogji)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/mqhamdam/jjogji)
![GitHub watchers](https://img.shields.io/github/watchers/mqhamdam/jjogji?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/mqhamdam/jjogji?style=social)
![GitHub forks](https://img.shields.io/github/forks/mqhamdam/jjogji?style=social)
![GitHub Sponsors](https://img.shields.io/github/sponsors/mqhamdam?style=social)

# Welcome To Jjogji

### Table on Contents

 - App Description
 - App Presentation
 - Technologies used in App
 - Backend Architecture
 - Frontend Architecture
 - Future Vision
 - Links & References
 ---
## App Description
The "Jjogji" is MVP(Minimum Viable Product) Serverless SNS (Social Networking Service) application platform that offers users the ability to **create, share, like, and comment** on text-based content. The application provides a wide range of features that allow users to customize their experience.  
Users can **make their publications public, private, or special, and have the option to disable or enable comments** for each specific publication. The application also offers various engagement features. Users can interact with each other on the platform **by following or adding others as besties.** This creates a personalized network of contacts and allows users to connect and share content with each other easily.  
The application **offers translating posts to many popular languages, and a Text-To-Speech feature.**  
Overall, the "Jjogji" platform provides a user-friendly interface for individuals to connect, share, and engage with others. The application's customizable features allow users to tailor their experience to their liking and the platform's serverless architecture provides a reliable and efficient service.

![App Banner](https://github.com/mqhamdam/jjogji/blob/main/README_ASSETS/play_store_feature_graphic.png?raw=true "App Banner")
---

## Watch Video Presentation
[![](https://img.youtube.com/vi/YEmiZQoCQVo/1.jpg)](https://youtu.be/YEmiZQoCQVo)
---
## Technologies Used in Project

 - Firebase
	 - Firebase Cloud Functions (Auth Triggers & httpsCallable)
	 - Firebase Firebse Cloud Messaging (GCP)
	 - Google Cloud Platform Logger
	 - Firebase Test-Lab
	 - Crashlytics
	 - Google Analytics
	 - Firebase Storage
	 - Firebase AppCheck
 - MongoDB (Serverless DB)
 - NodeJS
 - ExpressJS
 - Flutter
	 - BLoC (State Management)
	 - freezed (Sealed/immutable/union classes)
	 - dartz (Functional Programming)

### App Architecture
![App Architecture](https://github.com/mqhamdam/jjogji/blob/main/README_ASSETS/app_architecture.png?raw=true "App Architecture")
---
#### MongoDB Schema Model
![MongoDB Schema](https://github.com/mqhamdam/jjogji/blob/main/README_ASSETS/mongodb_schema.png?raw=true "MongoDB Schema")
---

## Backend Architecture

### Event Driven Design
Event-driven design is an architectural design pattern that focuses on handling and responding to events that occur within a system. In this design approach, the system's behavior is determined by events, which can be any occurrence or action that requires attention or response from the system.

In event-driven design, the system is composed of different components or modules that interact with each other by generating and reacting to events. These components are designed to be decoupled, meaning they are independent of each other and communicate through events rather than direct method calls.
#### The key concepts in event-driven design are as follows:
1.  **Events**: An event is a signal or notification that something has happened in the system. It can be triggered by user actions, changes in the system's state, or external inputs. Events can be categorized into different types and can carry data or payload related to the event.
    
2.  **Event producers**: These are the components or modules responsible for generating events. They detect and notify the system when a particular event occurs. For example, a button click in a user interface can generate a "button clicked" event. 
    
3.  **Event consumers**: These components or modules are interested in specific events and respond to them accordingly. They subscribe or listen to events and perform the necessary actions when an event they are interested in is triggered. For example, a "button clicked" event consumer might update the user interface in response to the button click.
    
4.  **Event bus**: The event bus is a communication mechanism that enables the exchange of events between producers and consumers. It acts as a central hub where events are published by producers and delivered to the relevant consumers. The event bus ensures that events are delivered to all interested consumers without direct coupling between components.
    
5.  **Event handlers**: These are the logic or code blocks that execute when a specific event occurs. They define the actions to be taken in response to an event. Event handlers are associated with event consumers and are triggered when the corresponding event is published on the event bus.

###  Diagram Example
![Event Driven Design](https://github.com/mqhamdam/jjogji/blob/main/README_ASSETS/event_driven_design.png?raw=true "EDD")
---
## Frontend Architecture
### DDD - Domain-Driven Design
Domain-driven design (DDD) is an approach to software development that aims to align the software design with the business domain it represents. It emphasizes understanding and modeling the problem domain in depth, and using that understanding to guide the design and development of software systems.

In DDD, the "domain" refers to the specific area or subject matter that the software system addresses. It could be anything from banking, e-commerce, healthcare, logistics, or any other industry or business domain. The domain typically consists of concepts, rules, processes, and terminology specific to that domain.

### 4 Layers of Domain-Driven Design

 - **Presentation Layer (or User Interface Layer):** The presentation layer is responsible for handling the interaction between the user and the system. It focuses on user interfaces, such as web interfaces, mobile apps, or desktop applications. This layer is responsible for displaying information to the user, capturing user input, and initiating actions in response to user interactions. It communicates with the application layer to retrieve data and trigger domain operations.
 - **Application Layer (or Service Layer):** The application layer contains the application logic that coordinates and orchestrates the interactions between different components of the system. It acts as an intermediary between the presentation layer and the domain layer. The application layer receives requests from the presentation layer, validates inputs, and coordinates the execution of domain operations. It does not contain business rules but enforces system-level policies and rules, such as authorization, logging, and transaction management.
- **Domain Layer (or Business Layer):** The domain layer represents the core of the system and contains the domain model and business logic. It encapsulates the concepts, behaviors, and rules of the problem domain. This layer defines the entities, value objects, aggregates, and domain services that model the business concepts. It also contains the business rules, validations, and workflows that govern the behavior and consistency of the domain model. The domain layer should be independent of any infrastructure or technical concerns.
- **Infrastructure Layer (or Persistence Layer)**: The infrastructure layer provides the technical infrastructure and support required by the other layers. It handles data persistence, external services integration, and other infrastructure concerns. This layer includes components such as databases, file systems, web services, messaging systems, and external API clients. The infrastructure layer provides implementation details and adapters to connect the domain layer with external systems or resources.

#### Diagram

![Domain Driven Design](https://github.com/mqhamdam/jjogji/blob/main/README_ASSETS/domain_driven_design.png?raw=true "DDD")
---
## Conclusion / Future Vision
This project not finished for 100% and yet still needs improvements and refactorings. But You can still download app and use main features. To improve project we can add marketplace so users can exchange their points for emoticons or badges, and of course we could add groups or communities. I will continue working on it.

---
## References & Links
.. To be complited..