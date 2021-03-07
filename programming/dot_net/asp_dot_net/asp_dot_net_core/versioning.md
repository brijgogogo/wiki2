# api versioning
purpose: Don't break clients
you're serving your clients, not yourselves

## patterns
- Versioning in the URI
  - URI path: http://foo.org/api/v2/Customers
  - Query string: http://foo.org/api/Customers?v=2.0
- Versioning with Headers
  - X-Version: 2.0
  - Accept: application/json;version=2.0
  - Content-Type: application/vnd.yourapp.entity.v1+json
  - Accept: application/vnd.yourapp.entity.v1+json


## asp.net api versioning
nuget package: MicrosoftAspNetCore.Mvc.Versioning

// Startup.ConfigureServices
services.AddApiVersioning(opt =>
    {
      opt.AssumeDefaultVersionWhenUnspecified = true;
      opt.DefaultApiVersion = new ApiVersion(1, 1);
      opt.ReportApiVersions = true;

      //default
      // path/to/route?api-version=1.1
      opt.ApiVersionReader = new QueryStringApiVersionReader();

      // path/to/route?ver=1.1
      opt.ApiVersionReader = new QueryStringApiVersionReader("ver");
      opt.ApiVersionReader = new QueryStringApiVersionReader("ver", "version");//multiple keys

      opt.ApiVersionReader = new HeaderApiVersionReader("X-Version");

      //multiple versioning schemes
      opt.ApiVersionReader = ApiVersionReader.Combine(..);

      opt.ApiVersionReader = UrlSegmentApiVersionReader();
      // [Route("api/v{version:apiVersion}/[controller]")] : add to controllers

      // define version support in controller/actions using Conventions
      opt.Conventions.Controller<SomeController>()
        .HasApiVersion(new ApiVersion(1, 0))
        .HasApiVersion(new ApiVersion(1, 1))
        .Action(x => x.Delete(default(string), default(int)))
        .MapToApiVersion(1,1);//or use ApiVersion attribute
    });

[ApiVersion("1.0")]
[ApiVersion("1.1")]
public class SomeController : ControllerBase
{
  [HttpGet("..")]
  [MapToApiVersion("1.0")]
  public async Task<ActionResult<string>> GetItems() {  }
}

