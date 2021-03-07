# Input / Output Formatters
- Input formatters used by Model Binding
- Output formatters used by format response

Built-in input formatters: JSON, XML
Built-int output formatters: JSON, XML, text

MvcOptions
- InputFormatters
- OutputFormatters

= response format =

## format-specific ActionResults
- JsonResult

[HttpGet]
public JsonResult Get()
{
  return Json(getModels());
}

- ContentResult: plain-text

[HttpGet]
public ContentResult Get()
{
  return Content("some content");
}

[HttpGet]
public string Get() // same as ContentResult
{
  return "some content";
}



## sources
https://docs.microsoft.com/en-us/aspnet/core/web-api/advanced/formatting

