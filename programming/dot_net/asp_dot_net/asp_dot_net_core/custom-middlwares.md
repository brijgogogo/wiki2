# custom-middlwares
can be defined using:
1. Run, Use or Map extension methods on IApplicationBuilder
2. custom class


## Use
- Chain multiple request delegates together with Use. The "next" paramter represents the next delegate in pipeline. You can short-circuit the pipeline by not calling the "next" parameter.

app.Use(async (context, next) =>
{
  // before logic here
  await next.Invoke();
  // after logic here
})


## Run
- The first Run delegate terminates the pipeline

app.Run(async context =>
{
  await context.Response.Write("generate response");
})


## Map
- Map branches the request pipeline based on matches of the given request path.

// Startup.Configure
public void Configure(IApplicationBuilder app)
{
    // branching based on request path
    app.Map("/skip", (skipApp) => skipApp.Run(async (context) =>
        await context.Response.WriteAsync($"Skip the line!")));

    // map based on predicate
    app.MapWhen(ctx => ctx.Request.Query.ContainsKey("branch"}, HandleBranch);

    // nesting
    app.Map("/level1", level1App => {
      level1App.Map("/level2a", level2AApp => { .. });
      level1App.Map("/level2b", level2BApp => { .. });
    });

    app.Use(async (context, next) =>
    {
        var value = context.Request.Query["value"].ToString();
        if (int.TryParse(value, out int intValue))
        {
          await context.Response.WriteAsync($"You entered a number: {intValue}");
        }
        else
        {
            context.Items["value"] = value;
            await next();
        }
    });
    app.Use(async (context, next) =>
    {
         var value = context.Items["value"].ToString();
         if (int.TryParse(value, out int intValue))
         {
            await context.Response.WriteAsync($"You entered a number: {intValue}");
         }
         else
        {
            await next();
        }
    });
    app.Use(async (context, next) =>
    {
        var value = context.Items["value"].ToString();
        context.Items["value"] = value.ToUpper();
        await next();
    });
    app.Use(async (context, next) =>
    {
        var value = context.Items["value"].ToString();
        context.Items["value"] = Regex.Replace(value, "(?<!^)[AEUI](?!$)", "*");
        await next();
    });
    app.Run(async (context) =>
    {
        var value = context.Items["value"].ToString();
        await context.Response.WriteAsync($"You entered a string: {value}");
    });
}

## class middleware
The class should have:
- constructor with RequestDelegate paramter
- Invoke method which receives HttpContext

public class CustomMiddleware
{
  private readonly RequestDelegate next;

  public CustomMiddleware(RequestDelegate next) {
    this.next = next;
  }

  public async Task Invoke(HttpContext contex) {
    //logic
    next(context);

    // await next.Invoke(context);
  }
}

// Startup
public void Configure(IApplicationBuilder app)
{
  app.UseMiddleware<CustomMiddleware>();
}




