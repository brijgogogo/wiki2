# asp.net core
- cross platform
- modular, lightweight
- dependency injection within the framework
- built on top of .net core
- can be hosted on IIS, self-hosted in its own process, or even hosted inside Docker
- middleware: components that can intercept requests, and perform some logic
- configuration from files, command line, environment variables, in-memory, encrypted secret stores, ini file
- logging

## running
- dotnet new webapp -o <app_name>
- dotnet run
By default, ASP.NET Core binds to:
    http://localhost:5000
    https://localhost:5001 (when a local development certificate is present)


## topics
- [mvc_lifecycle](mvc_lifecycle)
- [middleware](middleware)
- [startup](startup)
- [endpoints](endpoints)
- [host](host)
- [routing](routing)
- [filters](filters)
- [hosted_services](hosted_services)
- [logging](logging)
- [hosting_and_deployment](hosting_and_deployment)
- [configuration](configuration)
- [environments](environments)
- [error_handling](error_handling)
- [model_binding](model_binding)
- [http_verb_attributes](http_verb_attributes)
- [dependency_injection](dependency_injection)
- [response_format](response_format) (input/output formatter)
- [api_versioning](api_versioning)
- [paths](paths) content root, web root

# Controller action return types
- Specific Type
  - If returning IEnumerable<T>, it results in synchronous collection itereations by the serializer. The result is blocking of calls and a potential for thread pool starvation.
  - Consider returning IAsyncEnumerable<T> to gurantee asynchronous iteration by the serializer.
- IActionResult
  - appropriate when multiple ActionResult return types are possible in an action.
  - ActionResult type represent various HTTP status codes.
  - e.g. BadRequestResult, NotFoundResult, OkObjectResult, available via ControllerBbase convenience methods (BadRequest(), NotFound(), Ok()).
  - Consider applying ProducesResponseType attribute as multiple status codes and return types.
- ActionResult<T>
  - allows you to return type deriving from ActionResult or return a specific type.
  - Can exclude ProducesResponseType.Type property as action's return type is inferred from the T in ActionResult<T>.
  - Implicit ast operators support conversion of both T and ActionResult to ActionResult<T>. T converts to ObjectResult.
  - C# doesn't support implicit cast operators on interfaces.

## flavours
- [web_api](web_api)
- [razor_pages](razor_pages)





# paths
content root: base path to any private content used by the app (default: path of executable hosting the app)
web root: base path to public, static resources, such as CSS, JavaScript, and image files (default: <content root>/wwwroot). ~/ points to web root.



# web api

= sources =
https://docs.microsoft.com/aspnet
https://docs.microsoft.com/en-us/aspnet/core/fundamentals
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/startup
https://docs.microsoft.com/en-us/aspnet/core/mvc/controllers/routing
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/dependency-injection
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/middleware
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/host/web-host
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/host/web-host#content-root
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/host/generic-host
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/host/hosted-services
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/servers
https://docs.microsoft.com/en-us/aspnet/core/security/app-secrets
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/configuration
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/configuration/options
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/environments
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/logging
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/routing
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/error-handling
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/http-requests
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/static-files


https://softwareengineering.stackexchange.com/questions/312197/benefits-of-structured-logging-vs-basic-logging
https://messagetemplates.org/
https://github.com/App-vNext/Polly
https://www.hanselman.com/blog/AddingResilienceAndTransientFaultHandlingToYourNETCoreHttpClientWithPolly.aspx

https://docs.microsoft.com/en-us/aspnet/core/web-api


