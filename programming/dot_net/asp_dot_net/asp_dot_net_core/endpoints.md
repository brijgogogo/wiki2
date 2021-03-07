# endpoints
IApplicationBuilder
- Run(RequestDelegate forHttpContext)
- Use(RequestDelegate forHttpContext, RequestDelegate forNextLayer)
- Map
- MapWhen
The Map and MapWhen methods wrap an IApplication.Use delegate. MapWhen

## example
public void Configure(IApplicationBuilder app)
{
    app.Use(async (context, next) =>
    {
        if (context.Request.Path == "/foo")
        {
            await context.Response.WriteAsync($"Welcome to Foo");
        }
        else
        {
            await next();
        }
    });
    app.Use(async (context, next) =>
    {
        if (context.Request.Path == "/bar")
        {
            await context.Response.WriteAsync($"Welcome to Bar");
        }
        else
        {
            await next();
        }
    });
    app.Run(async (context) =>
        await context.Response.WriteAsync($"Welcome to the default")
    );
}


## example
public void Configure(IApplicationBuilder app)
{
    app.Map("/foo",
        config =>
            config.Use(async (context, next) =>
                await context.Response.WriteAsync("Welcome to /foo")
            )
    )
    app.MapWhen(
        context =>
            context.Request.Method == "POST" &&
            context.Request.Path == "/bar",
        config =>
            config.Use(async (context, next) =>
                await context.Response.WriteAsync("Welcome to POST /bar");
            )
    );
}

