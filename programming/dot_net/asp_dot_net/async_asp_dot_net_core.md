# async asp.net core

For synchronous API code, when a request is made to the API, a thread from the thread pool will handle the request. If the code makes an I/O call (like a database call) synchronously, the thread will block until the I/O call has finished. The blocked thread can’t be used for any other work, it simply does nothing and waits for the I/O task to finish. If other requests are made to our API whilst the other thread is blocked, different threads in the thread pool will be used for the other requests.

There is some overhead in using a thread – a thread consumes memory and it takes time to spin a new thread up. So, really we want our API to use as few threads as possible.


If the API was to work in an asynchronous manner, when a request is made to our API, a thread from the thread pool handles the request (as in the synchronous case). If the code makes an asynchronous I/O call, the thread will be returned to the thread pool at the start of the I/O call and then be used for other requests.


Fundamentally, the .NET APIs will call down to system-level APIs provided by the Windows operating system. These perform asynchronous I/O, and signal the caller when they have completed.


* [performance_and_scalability](performance_and_scalability)


## sources
https://www.carlrippon.com/scalable-and-performant-asp-net-core-web-apis-asynchronous-operations/

