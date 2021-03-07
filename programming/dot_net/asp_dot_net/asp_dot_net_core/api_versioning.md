# api versioning

## ways
- query-string
- HTTP header

nuget package Microsoft.AspNetCore.Mvc.Versioning


// Startup.ConfigureServices
services.AddApiVersioning();

// controller
[ApiVersion("1.0")]
public class DemoController : ControllerBase
{
}


## sources
https://github.com/microsoft/aspnet-api-versioning/wiki/New-Services-Quick-Start

