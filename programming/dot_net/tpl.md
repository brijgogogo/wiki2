# TPL

## Delegate Task
this is a task that has code to run.

Lifecycle: Created/WaitingForActivation --> WaitingToRun --> Running --> WaitingForChildrenToComplete --> RanToCompletion/Faulted/Canceled

* Task.Run(Action) : shortcut to TaskFactory.StartNew(...) : Executes a delegate on a ThreadPool thread
* TaskFactory.StartNew(...) : has several overloads for fine-grained control over the task
* Task.Factory.StartNew(...) : factory instance that targets the current task scheduler

## Promise Tasks
tasks that represent a kind of event within a system; they don’t have any user-defined code to execute.

Lifecycle: WaitingForActivation --> RanToCompletion/Faulted/Canceled

* Task.Delay(2000) : starts a timer and completes its returned task when that timer fires
* Task.Yield - Generates an awaitable that completes just after it is checked for completion. Continues on the captured context. When await is reached in an async method it checks whether the task (or other awaitable) already completed and if so it continues on synchronously. Task.Yield prevents that from happening so it's useful for testing.
YieldAwaitable claims it is not completed, and then scheduling its continuations immediately.
* Task.FromResult("result") : creates a completed task with the specified value

  public Task<string> GetValueAsync(int key)
  {
    string result;
    if (cache.TryGetValue(key, out result))
      return Task.FromResult(result);
    return DoGetValueAsync(key);
  }
* Task.FromCanceled
* Task.FromException

## Status Properties
* Task.IsCompleted
* Task.IsCanceled
* Task.IsFaulted

## task identifiers
* Task.Id
generated on-demand
* Task.CurentId
identifier of the currently-executing task, or null if no task is executing
* TaskScheduler.Current.Id
identifier of the current TaskScheduler
If there is no task executing, the current scheduler is the default (thread pool) scheduler.

## waiting
* Task.Wait()
blocks the calling thread until the
- task completes
- timeout occurs (Wait returns false)
- wait is cancelled (Wait raises OperationCanceledException)

* Task.WaitAll(params Task[])
* Task.WaitAny(params Task[])

* Task.ConfigureAwait(bool):

## results
* Task<T>.Result
It will synchronously block the calling thread until the task completes.
* Task.Exception
It will wrap any task exceptions inside an AggregateException
* Task.GetAwaiter().GetResult()
It will synchronously block until the task completes.
It doesn't wrap the task exceptions in an AggregateException
* await task
- await will asynchronously wait (not block)
- await will return result (if any) for a successful task
- await will (re-)throw exceptions for a failed task without wrapping them in an AggregateException


## continuations
A continuation is a delegate that you can attach to a task and runs when the task is done.
When the task completes, it will then schedule its continuations.
The task that a continuation attaches to is called a "antecedent" task.

* Task.ContinueWith(Func/Action<Task<TResult>>)
The continuation delegate receives a task as a parameter (antecedent task instance)
ContinueWith also returns a task representing the continuation.
* TaskFactory.ContinueWhenAny(...)
* TaskFactory.ContinueWhenAll(...)
* Task.WhenAll(TaskResult[])
* Task.WhenAny(TaskResult[])


## starting
When Task is created via constructor. It is in Created state. To start:
* Start() : moves task to WaitingToRun state
* RunSynchronously() : attempts to start the task immediately and execute it on the current thread.


Any exception that occurs in Action, is swallowed, and can be checked with TaskResult.IsFaulted.


var task = Task.Run(() => {
  Thread.Sleep(2000);
  return "Login Successful";
});

// continuation not on main thread
task.ContinueWith((t) => {
    Dispatcher.Invoke(() => {
          if(!t.IsFaulted) {
           LoginButton.Content = t.Resut;
           LoginButton.IsEnabled = true;
          }
        });
    });

// continuation on main thread
task.ConfigureAwait(true) // configuring awaiter to go back to main thread
    .GetAwaiter()
    .OnCompleted(() =>
        {
          LoginButton.Content = task.Result;
          LoginButton.IsEnabled = true;
        })


## Task.Delay vs Thread.Sleep
Thread.Sleep: blocks the current thread, which causes context switch
Task.Delay: logical delay without blocking the current thread. Runs asynchronously.

await Task.Delay(5000)

- Thread.Sleep still ties up your Thread, Task.Delay release it to do other work while you wait.
- blocking a single thread with Thread.Sleep() consumes an entire thread that could otherwise be used elsewhere.


## sources
https://blog.stephencleary.com/2014/12/a-tour-of-task-part-6-results.html

