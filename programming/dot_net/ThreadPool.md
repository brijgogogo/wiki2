# ThreadPool
- System.Threading.ThreadPool
- Collection of threads already created and waiting for work items. When they've finished executing a work item, they then wait for the next one.
- ThreadPool uses a queue of Tasks, which are picked and executed, and then moved to completed tasks queue.
- ThreadPool threads are background threads, so a ThreadPool thread will not keep an application running after all foreground threads have exited
- When the thread pool starts, there is just one thread in the thread pool. From then on, the thread pool manager creates more threads and stores them in the thread pool as the load on the application increases
- There is limit on max/min number of threads
- There is one thread pool per process.
- the default size of the thread pool for a process depends on several factors, such as the size of the virtual address space.
- Each thread uses the default stack size and runs at the default priority.

pros:
- reusable threads
- due to limit on number of threads, it won't let used memory to grow dramatically
- avoids creating lots of threads for short tasks

cons:
- when a long-running task is in execution, the thread pool thread may be blocked for a long time
- not a good choice when you have threads that differ in their priorities or you may need to abort a thread prematurely
- When the thread pool reuses a thread, it does not clear the data in thread local storage or in fields that are marked with the ThreadStaticAttribute attribute.

usages:
- When you create a Task or Task<TResult> object to perform some task asynchronously, by default the task is scheduled to run on a thread pool thread.
- Asynchronous timers use the thread pool. Thread pool threads execute callbacks from the System.Threading.Timer class and raise events from the System.Timers.Timer class.


ThreadPool member:
- ThreadPool.QueueUserWorkItem(WaitCallback, Object) : executes code in a thread pool thread
- SetMaxThreads(..)
- SetMinThreads(..)
- GetMaxThreads(..)
- GetAvailableThreads(..)
- IsThreadPoolThread: confirms if a thread is from thread pool

## sources
https://jonskeet.uk/csharp/threads/threadpool.html
https://docs.microsoft.com/en-us/dotnet/api/system.threading.threadpool

