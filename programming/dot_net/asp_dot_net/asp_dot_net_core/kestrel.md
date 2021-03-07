# kestrel
Kestrel is a cross-platform web server for ASP.NET Core.
Based on libuv
- supports HTTPS, HTTP/2

## Using Kestrel
* by itself - processes requests directly from a network
* with a reverse proxy server, such as Internet Information Services (IIS), Nginx, or Apache. A reverse proxy server receives HTTP requests from the internet and forwards them to Kestrel.

ASP.NET Core IIS Module (ANCM), an IIS module, must be installed in IIS for the IIS integration to work.

When Kestrel is configured to listen on a port, Kestrel handles all of the traffic for that port regardless of requests' Host headers. A reverse proxy that can share ports has the ability to forward requests to Kestrel on a unique IP and port.

* [reverse proxy](reverse-proxy)

= usage / configuration =
The Microsoft.AspNetCore.Server.Kestrel package is included in the Microsoft.AspNetCore.App metapackage (ASP.NET Core 2.1 or later).

By default ASP.NET Core templates use Kestrel. CreateDefaultBuilder() calls UseKestrel() behind the scenes.

var host = new WebHostBuilder()
        .UseContentRoot(Directory.GetCurrentDirectory())
        .UseKestrel()
        .UseIISIntegration()
        .UseStartup<Startup>()
        .ConfigureKestrel((context, options) =>
        {
            // Set properties and call methods on options
            options.Limits.MaxConcurrentConnections = 100;
            options.Limits.MaxConcurrentUpgradedConnections = 100;
            options.Limits.MaxRequestBodySize = 10 * 1024;
            options.Limits.MinRequestBodyDataRate = new MinDataRate(bytesPerSecond: 100, gracePeriod: TimeSpan.FromSeconds(10));
            options.Limits.MinResponseDataRate = new MinDataRate(bytesPerSecond: 100, gracePeriod: TimeSpan.FromSeconds(10));
            options.Listen(IPAddress.Loopback, 5000);
            options.Listen(IPAddress.Loopback, 5001, listenOptions =>
            {
              listenOptions.UseHttps("testCert.pfx", "testPassword");
            });
        })
        .Build();

    host.Run();

== Endpoint Configuration ==
By default, ASP.NET Core binds to: http://localhost:5000 and https:localhost:5001

You can specify URLs using:
- ASPNETCORE_URLS environment variables
- --urls command-line arguments
- urls host configuration key
- UseUrls extension method

"Urls" : "http://localhost:8000;http://localhost:8001"

When the port number 0 is specified, Kestrel dynamically binds to an available port

public void Configure(IApplicationBuilder app)
{
  var f = app.ServerFeatures.Get<IServerAddressesFeature>();
  logger.LogInformation(string.Join(", ", f.Addresses);
}

= sources =
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/servers/kestrel

