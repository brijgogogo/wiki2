# async-await
- async keyword enables the await keyword in that method and changes how method results are handled
- async method runs synchronously until it hits an await (or throws an exception)
- await takes a single argument, an awaitable (an awaitable is an asynchronous operation).
- Await examines that awaitable to see if it has already completed; if the awaitable has already completed, then the method just continues running (synchronously, just like a regular method).
- If await sees that the awaitable has not completed, then it acts asynchronously. It tells the awaitable to run the remainder of the method when it completes, and then returns from the async method.
- awaitable types: Task<T>, Task, Task.Yield
- Marking the method `async` doesn't run the method body asynchronously. It gives us the capability to create continuations.
- the await keyword will "unwrap" the value returned when the Task is complete


## suspension and resumption
The current context is captured at the time an asynchronous method is suspended, and that captured context is used to invoke the asynchronous method’s continuation upon resumption.
To continue execution wherever the asynchronous operation that was being awaited completed:
  await someTask.ConfigureAwait(continueOnCapturedContext:false);


* [async_await_examples](async_await_examples)

## async/await in asp.net core
# benefits :
- the benefit of implementing asynchrony is to improve throughput by "releasing" threads when they aren't doing any work (e.g. when waiting for a service to respond)

## warnings:
- By putting an asynchronous wrapper over a synchronous method, we are doing an antipattern known as async-over-sync and this ends up being a bad idea most of the time. Not because it doesn't work (it does) but because it isn't efficient. It does release a thread it also immediately consumes another to perform the task-wrapped code, and this consumed thread is blocked while waiting for the service to respond. So we didn't improve throughput, we just moved the work from one thread to another.

- if there is no continuation (await is the last statement in async method), then there is performance issue. The perf issue is that using async/await causes the compiler to compile a state machine into the IL to manage state across continuations. As this is redundant, the method can ditch the async/await keywords and just return the task. This avoids the overhead of IL that is not required.

- Async and await on ASP.NET are all about I/O. They really excel at reading and writing files, database records, and REST APIs. However, they’re not good for CPU-bound tasks. You can kick off some background work by awaiting Task.Run, but there’s no point in doing so. In fact, that will actually hurt your scalability by interfering with the ASP.NET thread pool heuristics. If you have CPU-bound work to do on ASP.NET, your best bet is to just execute it directly on the request thread.




