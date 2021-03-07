# hosting

# hosting models
- in-process
- out-of-process


## in-process
- app runs in the same process as its IIS worker process (w3wp.exe)
- IIS handles process management
- web request -> HTTP.sys driver -> IIS (port 80/443) -> IISHttpServer (in-process server implementaion for IIS) -> app middleware
- improved performance over out-of-process hosting because requests aren't proxied over the loopback adapter
- IIS handles process management with the Windows Process Activation Service ([[WAS]])

UseIIS()

services.Configure<IISServerOptions>(options =>
{
  //options.AutomaticAuthentication = false; // HttpContext.User
});

## out-of-process
- app runs in a process separate from IIS worker process
- web request -> HTTP.sys driver -> IIS (port 80/443, w3wp.exe) -> Kestrel (random port, dotnet.exe) -> app middleware
- ASP.NET Core Module handles process management

UseIISIntegration()

services.COnfigure<IISOptions>(options =>
{
});


## ASP.NET Core Module
- Native IIS module
- handles native IIS requests between IIS and the in-process IIS HTTP Server or Kestrel


On Windows, ASP.NET Core app can be hosted in:
* [[IIS]]
* [[Windows_Service]] (application need to target full .NET framework runtime)






## sources
https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/iis/

