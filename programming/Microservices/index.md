# Microservices
Microservices are small, autonomous services that work together.
We focus our service boundaries on business boundaries, making it obvious where code lives for a given piece of functionality.


## Benefits
- Technology Heterogeneity
  - You could use different technology stack for each service based on its need.
  - You could adopt new technlogy quickly
- Resilience: failures in one service dont' cascade.
- Scaling: scale those services that need scaling, allowing us to run other parts of the system on smaller, less powerful hardware.
- Ease of Deployment: We can make a change to a single service an ddeploy it independently of the rest of the system.
- Organizational Alignment: architecture as per our organization, minimize nubmer fo people working on a codebase
- Composability: allows functionality to be consumed in different ways for different purposes.
- Optimizing for Replaceability: barriers to rewriting or removing services are very low


## Circuit Breaker
https://martinfowler.com/bliki/CircuitBreaker.html

## Loose Coupling among services
Limit the number of different types of calls from one service to another.

## High Cohesion
Related behaviour should sit together, and unrelated behavior should sit elsewhere.


Prematurely decomposing a system into microservices can be costly, especially if you are new to the domain. Having an existing codebase you want to decompose into microservices is much easier than trying to go to microservices from the beginning.


If a microservice adds new fields to a piece of data it sends out, existing consumers shouldn't be impacted.

Ensure that you keep the APIs used for communication between microservices technology-agnostic. This means avoiding integration technology that dictates what technology stacks we can use to implement our microservices.


Any technology that pushes us to expose internal representation detail should be avoided, because:
  - if we change something inside our microservice, we can break our consumers by requiring them to also change.
  - we become less likely to want to make a change for fear of having to update our consumers

## Communication - Synchronous or Asynchronous
- Request/Response: By default scynrhonous. Can be asynchronous (using callbacks)
- Events: By nature asyncronous.

## Managing business processes that stretch across the boundary of indivisual services
- Orchestration: a service acts as a central brain, it talks to other services to carry out the operations (via request/response). The brain service can become too much of a central governing authority (god service). This explicitly reflected business processes.
- Choreography: inform each part of the system of its job (via events), and let it work out the details. The business processes are implicitly reflected. This means additional work is needed to ensure that you can monitor and track that the right things have happened. This can be done via monitoring systems - exceptions mapped onto the more explicit process flow.

## Request-Response
- RPC
- REST


