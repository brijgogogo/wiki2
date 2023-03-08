# Orleans
Framework for building scalable distributed applications.
.NET implementation of the Actor Model
Distributed Virtual Actor Model



Scale up: add more RAM, more CPU, more resources to the hardware in which your system runs.
Scale out: add a brand new machine to a cluster

## Actor Model / Actor framework
- everything is an actor
- an actor is computational entity that, in response to a message it receives, can concurrently:
  - send a finite number of messages to other actors
  - create a finite number of new actors
  - designate the behavior to be used for the next message it receives
- Implementations: Orleans (.Net), Akka (.Net, Java), Celluloid (Ruby)
https://www.brianstorti.com/the-actor-model/



## Grains
- In Orleans each actor is called a grain.
- virtual actors and/or primitives
- Objects that actually contain your logic that is to be distributed.
- Single threaded & asynchronous
- Communication via message passing
- All actors have a unique key
- Messages are queued
- Grains cannot accesss or modify external state (in another Grain).

- Grain Managed Lifecycle: Activating -> Active in memory -> Deactivating -> Persisted
  Grains that are not used for a while are automatically removed from memroy to free up resources.
- Grains can be stateless or stateful
- Grains can communicate with one atother, clients can also communicate with grains.


## Silo
- Host servers that manage and execute grains
- Hosts grains, manages grain lifecycle
Typically, a group of silos runs as a cluster for scalability & fault tolerance.
- Deactivation: when silo decides a grain should be persisted to storage and unloaded from memory.
- Silos register themselves in a database and clients find and connect to silo servers by connecting to the same database.
- A cluster is automatically formed when multiple silos running on different servers share the same Orleans database.

## Clusters
a collection of silos
scale out: you can register or kill silos on your cluster

An Orleans application consists of:
- Grain interfaces (Microsoft.Orleans.Core.Abstractions, Microsoft.Orleans.OrleansCodeGenerator.Build)
- Grain implementation
- Orleans Silo host (Microsoft.Orleans.Server)
- Orleans client (Microsoft.Orleans.Client)

## Features
- Persistance: Grains can have multiple named persistent data objects, stored in any storage system. While a grain is running, this state is kept in memory.
- Distributed ACID transactions
- Streams: process a series of data items in a near-real-time.
- Reminders: durable scheduling mechanism for grains to ensure some action is completed at a future time even if the grain is not currently activated at that time.
- Timers: non-durable counterparts to reminders and can be used for high-frequency events which do not require reliability.
