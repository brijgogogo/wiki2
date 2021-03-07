# hosting & deployment
Host
- starts app
- lifetime management

An ASP.NET Core app uses an HTTP server implementation to listen for HTTP requests. The server surfaces requests to the app as a set of request features composed into an HttpContext.
Servers are responsible for reacting to requests made by clients by passing these requests to the application as HttpContexts.

## Servers available
- [kestrel](kestrel)
- IIS HTTP Server - An in-process server for IIS (uses IIS - ASP.NET Core app and IIS run in the same process)
- [http_sys](http_sys)

* [hosting](hosting)



## sources
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/servers

