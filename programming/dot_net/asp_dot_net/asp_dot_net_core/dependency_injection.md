# Dependency Inejction

## service lifetimes
lifetime for each registered service:
- Transient : created each time they're requested from the service container
- Scoped: created once per client request
- Singleton: created the first time they're requested

// Startup.ConfigureServices
services.AddScoped<IT, T>();
services.AddTransient<IT, T>();
services.AddSingleton<IS, S>(); // will be disposed by container
services.AddSingleton<IS>(new S()); // problem: as service was not created by container, it is not disposed by container
services.AddTransient<T, T>();

services can be resolved by:
- IServiceProvider
- ActivatorUtilities

var host = CreateWebHostBuilder(args).Build();
host.Services.CreateScope().ServiceProvider.GetRequiredService<S>();

HttpContext.RequestServices.GetService<IMyService>();

public IActionResult Get([FromServices] IMyService myService) { }




## sources
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/dependency-injection

