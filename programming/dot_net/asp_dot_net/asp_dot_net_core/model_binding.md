# model binding

# binding source attributes: location at which an action parameter's value is found
[FromBody]
[FromForm]
[FromHeader]
[FromQuery]
[FromRoute]
[FromService]


Model binding and model validation occur before the execution of a controller action.

## binding
- Complex type parameters are automatically bound using the request body.
- Action parameter name matching a name in the route template is automatically bound using the request route data.

