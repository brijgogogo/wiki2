# Task-based Asynchronous Patterns (TAP)
TAP is based on Task and Task<TResult> (in System.Threading.Tasks namespace). They represent arbitrary asynchronous operations.

## asynchronous operation conventions:
- method name: "Async" suffix after the operation name.
- return type: Task, Task<TResult>, ValueTask, ValueTask<TResult>
- parameters: should match (in type & order) its synchronous counterpart. out & ref parameters should be returned as part of TResult (in Task<TResult>)

combinators: methods that are devoted exclusively to the creation, manipulation, or combination of tasks. Example: WhenAll, WhenAny


## continuations
Task.ContinueWith: create continuations explicitly
await: create continuations implicitly

## TaskStatus
- Task.Status: TaskStatus enum

- completed states in TaskStatus: Faulted, Canceled, RanToCompletion
Task.IsCompleted returns true

- cold tasks vs hot tasks
Cold Tasks: Tasks that are created by the public Task constructors. They are in non-scheduled TaskStatus.Created state and are scheduled only when Start methid is called.
Other tasks begin their life cycle in hot state (asynchronous operations have already been initiated)


## Cancellation
- If an operation allows cancellation, it exposes an overload of the asynchronous method that accepts a cancellation token (CancellationTocken)
- The asynchronous operation monitors this token for cancellation requests.

Task.State == TaskStatus.Canceled

continuation on cancellation:
- When a task completes in the Canceled state, any continuations registered with the task are scheduled or executed, unless a continuation option such as NotOnCanceled was specified to opt out of continuation.
TaskContinuationOptions enum: NotOnCanceled
Task.ContinueWith(TaskContinuationOptions)

exception on cancellation:
- Any code that is asynchronously waiting for a canceled task through use of language features continues to run but receives an OperationCanceledException or an exception derived from it.
- Code that is blocked synchronously waiting on the task through methods such as Wait and WaitAll also continue to run with an exception.

CancellationToken.None: returns an empty CancellationToken: cannot be canceled (CanBeCanceled = false). Same as default(CancellationToken)

## Exceptions
Task.State == TaskStatus.Faulted
Task.Exception

## Progress
IProgress<T>
Passed as a paramter to asynchronous method

IProgress<T> implementations:
- Progress<T>
  - ProgressChanged event : raised every time the asynchronous operations reports a progress update. The event is raised on the SynchronizationContext object that was captured when the Progress<T> instance was initiated. If no synchronization context was available, a default context that targets the thread pool is used.
  - OnReport(T value)
Progress updates are raised asynchronously.


* [tpl](tpl)
* [async_await](async_await)

## sources
https://docs.microsoft.com/en-us/dotnet/standard/asynchronous-programming-patterns/task-based-asynchronous-pattern-tap

