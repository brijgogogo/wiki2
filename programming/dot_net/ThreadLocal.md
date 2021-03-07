# ThreadLocal<T>
Provides thread-local storage of data.

ThreadLocal<string> ThreadName = new ThreadLocal<string>(() => { return "Thread" + Thread.CurrentThread.ManagedThreadId; });


- Value and IsValueCreated properties is specific for the thread on which they property is accessed
- ThreadName.Dispose() (not thread safe)


## sources
https://docs.microsoft.com/en-us/dotnet/api/system.threading.threadlocal-1.-ctor?view=netframework-4.8

