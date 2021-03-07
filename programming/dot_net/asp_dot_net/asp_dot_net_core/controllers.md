# controllers
- uses controllers to handle requests


[ApiController]
[Route("api/[controller]")]
[Produces("application/json")]
public class DemoController : ControllerBase
{

}

## ApiControllerAttribute
enables some API-specific behavirous
- automatic HTTP 400 responses (if ModelState.IsValid == false)
- binding source parameter inference
  - [FromBody] is inferred for complex type parameters.
  - [FromForm] is inferred for action parameters of type IFormFile and IFormFileCollection.
  - [FromRoute] is inferred for any action parameter name matching a parameter in the route template.
  - [FromQuery] is inferred for any other action parameters
- attribute routing requirement (need to specify [Route("")])
-

## ControllerBase (Microsoft.AspNetCore.Mvc)
- BadRequest : returns 400
- NoFound : returns 404
- Ok : returns 200
- PhysicalFile
- TryUpdateModelAsync : invokes model binding
- TryValidateModel : invokes model validation

## sources
https://docs.microsoft.com/en-us/aspnet/core/web-api/

