# startup

## Host
An ASP.NET Core app builds a host on startup. The host is an object that encapsulates all of the app's resources, such as middleware components, logging, DI, configuration, etc.

WebHost.CreateDefaultBuilder(args)
            .UseStartup<Startup>();
			.Build()
			.Run();

WebHost.CreateDefaultBuilder function creates IWebHostBuilder, which allows to pass application configuration inline or use extension methods.

The default web host is automatically configured to:
- use the current directory as the content root;
- load optional configurations from various sources;
- log console and debug output;
- use the Kestrel server, a new cross-platform web server;
- and run on IIS if it is available

## example
same as default web host, but explicit:

    new WebHostBuilder()
        .UseKestrel()
        .UseContentRoot(Directory.GetCurrentDirectory())
        .ConfigureAppConfiguration(config =>
            config.AddJsonFile("appSettings.json", true)
         )
        .ConfigureLogging(logging=>
            logging
                .AddConsole()
                .AddDebug()
        )
        .UseIISIntegration()
        .UseStartup<Startup>()
        .Build();



* UseStartup method: registers a class that is responsible for configuring the application startup process. The class should have two methods:
  * ConfigureServices(IServiceCollection services) // optional : application level dependencies are registered in IoC container by adding to IServiceCollection, like services.AddSingleton<IComponent, ComponentX>();

  * Configure() : configuraion of the application's HTTP request pipeline

public void Configure(IApplicationBuilder app, IComponent component)
{
    app.Run(async (context) =>
        await context.Response.WriteAsync($"Name is {component.Name}")
    );
}


## example
not using startup class:
WebHost.CreateDefaultBuilder()
    .ConfigureServices(services =>
        services.AddSingleton<IComponent, ComponentB>()
    )
    .Configure(app =>
    {
      var component = app.ApplicationServices.GetRequiredService<ICompone nt>();
        app.Run(async (context) =>
           await context.Response.WriteAsync($"Name is {component.Name}")
        );
     })
     .Build();



## Startup class
- ConfigureServices(IServiceCollection): configure services required by the app
	Services: components that are used by the app

- Configure(IApplicationBuilder): define request handling pipeline
	Pipeline is composed as a series of middleware components

