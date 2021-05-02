Domain Driven Design
Modeling a Ubiquitous Language in an explicitly Bounded Context.

## Problems in software developments
- Software development is considered a cost center rather than a profit center, a necessary nuisance rather than sources of strategic advantage.
- Developers are too wraped up with technology and trying to solve problems using technology rather than careful thought and design.
- Most discussions/solutions center around the database and a data model rather than business processes and operations.
- Poor collabaration with business.
- Developers house business logic in UI components and persistence components.

## Strategic Design
like broad brushstrokes prior to getting into the details of implementation.
What is important to your business.
How to divide up the work by importance.
How to integrate as needed.
## Tactical Design
like using a thin brush to paint the fine details of your domain model.


## Bounded Context
A semantic contextual boundary - within the boundary each component of the software model has a specific meaning and does specific things.
Represents the concepts of the model, which may be implemented as classes.
There should be one team assigned to work on one Bounded Context.
There should be separate source code repository, database schema, acceptance tests, unit tests for each Bounded Context.
The team owning the Bounded Context defines the official interfaces through which your Bounded Context must be used.
It is possible that people from other teams would have a different meaning for the same terminology, because their business knowledge is within a different context.
Often teams don't know when to stop piling more and more concepts into their domain model, turning the software into Big Ball of Mud.

## Core Domain
software model that ranks among the most important. It addresses a major line of business.

## Ubiquitous Language
Spoken among the team members and implemented in the software model.
- strict, exact, stringent, tight
- Developed by collaboration of developers and domain experts.
- Includes nouns, verbs, adverbs, etc.
- Drawings, diagrams can be used, but in the end Code is the model and model is the code. So use ceremonies (diagrams, etc) as long as it is helpful rather than burdensome.
- Keep refining the ubiquitous language

## Specificatios By Example / Behavior-Driven Development (BDD)
- Determines whether your models adheres to your specifications by creating acceptance tests.
- Given/when/then approach - unit tests - scenario validation.
- Can maintain the document form of the scenario associated with the validation code in comments.
- Kept in source code repository.

## Architectures with DDD
Ports and Adapter
  Input Adapter: Security, User Interface, Representations
  Application Service: Security, Transactions, Task Coordination, Use Case Controller
  Domain Model: Entities, Business Logic, Domain Events
  Output Adapter: Repositories, Documents, Cache, Messaging

Ports and Adapter can be used as a foundational architecture along with below:
- Event-Driven Architecture
- Command Query Responsibility Segregation (CQRS)
- Reactive and Actor Model
- Representational State Transfer (REST)
- Service-Oriented Architecture (SOA)
- Microservices
- Cloud computing

## Context Mapping
Integrate or interaction of bounded contexts.
