# asynchronous programming in .net

## benefits to asynchrony
1. scalability
2. offloading (e.g. responsiveness, parallelism)

Most client apps care about asynchrony for offloading reasons, such as maintaining responsiveness of the UI thread, though there are certainly cases where scalability matters to a client as well (often in more technical computing/ agent-based simulation workloads).
Most server apps care about asynchrony for scalability reasons, though there are cases where offloading matters, such as in achieving parallelism in back-end compute servers.

## scalability
The ability to invoke a synchronous method asynchronously does nothing for scalability, because you’re typically still consuming the same amount of resources you would have if you’d invoked it synchronously

## offloading
The ability to invoke a synchronous method asynchronously can be very useful for responsiveness, as it allows you to offload long-running operations to a different thread. This isn’t about how many resources you consume, but rather is about which resources you consume.
The ability to invoke a synchronous method asynchronously is also important for parallelism.


## patterns of asynchronous programming in .net
1. APM: Asynchronous Programming Model
Also called IAsyncResult pattern. Synchronous operations require "Begin" and "End" method.
2. EAP: Event-based Asynchronous Pattern
Requires a method that has the "Async" suffix and one or more events, event handler delegate types and EventArg-derived types.
3. [TAP](TAP) : Task-based Asynchronous Patterns
Uses a single method to represent the initiation and completion of an asynchronous operation. C# has async and  await keywords to support TAP.


## parallel programming
- data parallelism
- task parallelism
  - static task parallelism: number of work items is known at the beginning of the parallel processing
  - dynamic task parallelism: number of work items changes while they are being processed

If you’re writing parallel code, first try to use Parallel or PLINQ. If you actually are doing dynamic task parallelism, use Task.Run or Task.Factory.StartNew

nature of operations:
- I/O-bound
- CPU-bound


ways to achieve concurrency in .NET:
1. [Thread](Thread)
2. [ThreadPool](ThreadPool)
3. Task


## System.Threading
- [ThreadStaticAttribute](ThreadStaticAttribute)
- [AsyncLocal](AsyncLocal)
- [ThreadLocal](ThreadLocal)

## sources
https://docs.microsoft.com/en-us/dotnet/standard/async-in-depth
https://en.wikipedia.org/wiki/Futures_and_promises
https://devblogs.microsoft.com/pfxteam/should-i-expose-asynchronous-wrappers-for-synchronous-methods/
https://docs.microsoft.com/en-us/dotnet/standard/asynchronous-programming-patterns/

