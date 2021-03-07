# Thread
A thread is the smallest unit of execution within a process.
Low level elements of concurrency. They have their own stack and OS level resources.
Thread class provides highest degree of control:
- Start()
- Suspend()
- Abort()
- Resume()
- Join()
- Sleep(...)
- Abort()
- IsBackground
- CurrentThread
- CurrentCulture.Name
- CurrentUICulture
- IsThreadPoolThread
- Name (write once, default null)
- ManagedThreadId (assigned by runtime, uniquely identifies thread within its process)
- GetHashCode()
- Priority
- ThreadState

Cons:
- creation and destroying thread isn't cheap (time taking)
- memory requirements,
- additional processing on context switch between threads
- no maximum limit on number of threads (upto maximum resources available)

var t = new Thread(new ThreadStart(SomeMethod));
t.Start();

## Background vs Foreground Threads
a background thread does not keep a process running if all foreground threads have terminated

By default, the following threads execute in the foreground:
- The main application thread.
- All threads created by calling a Thread class constructor.

The following threads execute in the background by default:
- Thread pool threads
- All threads that enter the managed execution environment from unmanaged code.

You can change a thread to execute in the background by setting the IsBackground property at any time.


## sources
https://docs.microsoft.com/en-us/dotnet/api/system.threading.thread

