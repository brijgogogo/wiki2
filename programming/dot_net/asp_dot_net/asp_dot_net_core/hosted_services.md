# hosted services
run background tasks within the lifetime scope of the application.

public interface IHostedService
{
    Task StartAsync(CancellationToken cancellationToken);
    Task StopAsync(CancellationToken cancellationToken);
}

StartAsync: runs when the host starts up the hosted service
StartAsync: runs when the host is shutting down

public void ConfigureServices(IServiceCollection services)
{
    services.AddSingleton<IHostedService, DummyIHostedServiceImplementation>();
}

