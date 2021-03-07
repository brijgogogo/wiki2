# CQRS
Command-Query Responsibility Segregation.

Divides the system into two subsystem:
- Command Model: processes requests that modify the state of the system.
- Query Model: processes requests that extract information from the system.


## When to use
- When it is difficult to query from repositories all the data that users need to view.
  - need to query multiple repositories
  - need to query multiple domains

## When not to use
- If the system being designed is only an implementation of CRUD operations.
- Simple business logic, same number of reads and writes.
- You don't need to scale the system.
- CQRS doesn't need to be used in all parts of the system.
- Eventual consistency: information retrieved by query may not always be updated. Hence if you need strong consistency, you should not use CQRS.

## Sources
https://martinfowler.com/bliki/CQRS.html
