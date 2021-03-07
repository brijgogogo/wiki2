# routing
A route is a URL pattern that is mapped to a handler.
The handler is typically
	- a Razor page
	- an action method in an MVC controller
	- a middleware


- mapping request URIs to endpoint
- extract values from the URL
- connected to middleware pipeline by the RouterMiddleware

RouteContext.RouteData.Values - dictionary of route values - determined by tokenizing the URL
RouteData.DataTokens - property bag of additional data related to matched route (developer-defined)
RouteData.Routers - routes that took part in successfully mathcing the request

Routes are defined in startup code (conventional routing) or attributes (attribute routing)

## conventional routing
//Startup.Configure method
app.UseMvc(routes =>
{
  routes.MapRoutes("default", "{controller=Home}/{action=Index}/{id?}"); // first paramter is route name
});

app.UseMvcWithDefaultRoute();//same as above

Mvc configuration adds an instance of RouterMiddleware to the middleware pipeline.


routes.MapRoute("blog", "block/{*article}", defaults: new { controller= "Blog", action = "Article"}); // route will always map to BlogController.Article
{*article}: catch-all route paramter, to capture the remaining portion of the url path.

- Routes in the route collection are ordered, and will be processed in the order they're added.
- route names are used for URL generation

## Attribute Routing
- use attributes to map actions directly to route templates
- controller name and action names play no role in which action is selected
- matches the URL against the set of route templates defined by route attributes. Once a route template matches, IActionConstraint constraints (like HttpPost) are applied to determine which actions can be executed.

[Route("")]
[Route("Home")]
[Route("Home/Index")]
public IActionResult MyIndex() { .. }

[HttpGet("/products")]
public IActionResult ListProducts() { .. }

[HttpPost("/products")]
public IActionResult CreateProduct() { .. }

[HttpGet("/products/{id}", Name = "Products_List")] //Products_List is route name, must be unique applicaiton-wide
public IActionResult GetProduct(int id) { ..  }


- route attributes on the controller are combined (prepended) with route attributes on the individual actions.
[Route("products")]
public class ProductsApiController : Controller
{
  [HtpGet]
  public IActionResult ListProducts() { .. }

  [HttpGet("{id}")]
  public IActionResult GetProduct(int id) { .. }
}

- route templates applied to an action that beging with / or ~/ don't get combined
- attribute routes support token replacement: [action], [area], [controller] are replaced with action name, area name, controller name
[Route("[controller]/[action]", Name="[controller]_[action]")]

- attribute routes can be combined with inheritance
[Route("api/[controller]")]
public abstract class MyBaseController : Controller { .. }

public class ProductsController : MyBaseController
{
  [HttpGet]  // matches '/api/products'
  public IActionResult List() { .. }
}

- transforming tokens

//Startup.ConfigureServices
services.AddMvc(options =>
{
  options.Conventions.Add(new RouteTokenTransformerConvention(new SlugifyParamterTransformer()));
});

class SlugifyParamterTransformer : IOutboundParameterTransformer
{
  public string TransformOutbound(object value)
  {
    if(value == null) { return null; }

    return Regex.Replace(value.ToString(), "([a-z])([A-Z])", "$1-$2").ToLower();
  }
}

public class SubscriptionManagementController : Controller
{
  [HttpGet("[controller]/[action]")] // matches: '/subscription-management/list-all'
  public IActionResult ListAll() { .. }
}


# custom route attributes
public class MyApiControllerAttribute : Attribute, IRouteTemplateProvider
{
  public string Template => "api/[controller]";

  public int? Order { get;set; }
  public string Name {get;set;}
}

- typical usages
attribute routing: REST APIs
conventional routing: controllers serving HTML pages


# URL generation
var url = Url.Action("SomeAction"); // Controller exposes Url (IUrlHelper)
var url = Url.Action("Buy", "Products", new { id = 17, color = "red" }); // /Products/Buy/17?color=red
var url = Url.RouteUrl("Route_Name");

// generating link in HTML
IHtmlHelper -> HtmlHelper -> Html.BeginForm, Html.ActionLink   - uses Url.Action
IHtmlHelper -> HtmlHelper -> Html.BeginRouteForm, Html.RouteLink  - uses Url.RouteUrl

// in action results
RedirectToAction("Index");


# routing in Areas
app.UseMvc(routes =>
  routes.MapAreaRoutes("<route_name>", "<area_name>", "route/template");
  routes.MapRoute("<route_name>", "route/template", defaults: new { area = "<area_name>", constraints: new { area = "<area_name>" }); // use this or above line
);


[Area("Blog")] // denotes the controller is part of an area
public class SomeController : Controller { }

# route parameters
- tokens within curly braces
- must be separated by a literal value

examples
* files/{filename}.{ext?}
/files/myFile.txt
/files/myFile
* blog/{**slug}
any URI that starts with /blog
* foo/{*path}
matches foo/my/path (same as **), but generates foo/my%2Fpath (escaped forward slash)
* {name=value}
set default value
* {name?}
optional parameter
* {name:<constraint_name>(args):<another_constraint>}
blog/{article:minlength(10)}
{id:int}
{active:bool}
{dob:datetime}
{price:decimal}
{weight:double}
{id:guid}
{filename:maxlength(8)}
{filename:length(10)}
{filename:length(10,16)}
{age:min(18)}
{age:max(18)}
{age:range(18, 20)}
{name:alpha}
{ssn:regex(^[[a-z]]d{{3}}$)}
{name:required} : non-parameter value be present during URL generation
{id:int:min(1)}

* {name:<transformer_name>}
blog/{article:slugify}

= Endpoint Routing =
- Endpoint route resolution : looking at the incoming request and mapping the request to an endpoint using route mappings.

An endpoint represents the controller action.

- Endpoint dispatch : process of invoking the controller action method that corresponds to the endpoint.

- Endpont route mapping

Any middleware after the endpoint route resolution will be able to access the resolved endpoint through the HttpContext.

app.Use((context, next) =>
{
	var endpointFeature = context.Features[typeof(Microsoft.AspNetCore.Http.Features.IEndpointFeature)] as Microsoft.AspNetCore.Http.Features.IEndpointFeature;
	Microsoft.AspNetCore.Http.Endpoint endpoint = endpointFeature?.Endpoint;

	if(endpoint != null)
	{
		var routePattern = (endpoint as Microsoft.AspNetCore.Routing.RouteEndpoint)?.RoutePattern?.RawText;
		//endpoint.DisplayName
		//endpoint.Metadata
	}

	return next();
});


https://aregcode.com/blog/2019/dotnetcore-understanding-aspnet-endpoint-routing/



## sources
https://docs.microsoft.com/en-us/aspnet/core/mvc/controllers/routing
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/routing


