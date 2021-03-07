# logging
Write logs from anywhere in an app's code by getting an ILogger object from DI and calling log methods.

CreateDefaultBuild adds below logging providers:
- Console
- Debug
- EventSource

var host = new WebHostBuilder()
    .ConfigureLogging((hostingContext, logging) =>
    {
      // logging.ClearProviders();
      logging.AddConfiguration(hostingContext.Configuration.GetSection("Logging")); // picks up log filters, providers form config file(see # config below)
      logging.AddConsole(); // Add<ProviderName>
      logging.AddDebug();
      logging.AddEventSourceLogger();
      logging.AddFilter("System", LogLevel.Debug); // applies to all providers
      logging.AddFilter<DebugLoggerProvider>("Microsoft", LogLevel.Trace); // applies to debug provider
      logging.SetMinimumLevel(LogLevel.Warning);
    })
    .UseStartup<Startup>()
    .Build();

   var logger = host.Services.GetRequiredService<ILogger<Program>>();
   logger.LogInformation("..");

## ILogger<T> via DI
public SomeController(ILogger<SomeController> logger) {
  logger.LogInformation(LoggingEvents.GetItem, "Getting item {ID}", id);
  logger.LogWarning(LoggingEvents.GetItemNotFound, "GetById({ID}) not found", id);
}

## logs in Startup
public Startup(IConfiguration config, ILogger<Startup> logger) { .. }


## config
appsettings.Development.json file
{
  "Logging": {
    "LogLevel": {
      "Default": "Debug",                      // category : logLevel
      "System": "Information",
      "Microsoft": "Information"
    },
    "Console":                                // logging provider
    {
      "IncludeScopes": true
    },
    "Debug": {
      "LogLevel": {
        "Default" : "Information"
      }
    }
  }
}

## packages
Microsoft.Extensions.Logging.Abstractions
Microsoft.Extensions.Logging

## Log Category
ILogger<TCategory>
ILoggerFactory.CreateLogger("MyLogger");

## Log Level
Trace, Debug, Information, Warning, Error, Critical

## Log event ID
LoggingEvents.GetItem, GetItemNotFound, GenerateItems, ListItems, etc.
Console provider shows event IDs in brackets after the category

## Log message template
string p1 = "param1";
string p2 = "param2";
logger.LogInformation("values: {p2}, {1}", p1, p2); // values: param1, param2
- Order of placeholders is used


## Log scopes
group a set of logical operations, prints an id
using(logger.BeginScope("some-transaction-id"))
{
  logger.Log....
}

logging.AddConsole(options => options.IncludeScopes = true);


## providers
Microsoft.Extensions.Logging.Console - logging.AddConsole() - writes to console
Microsoft.Extensions.Logging.Debug - logging.AddDebug() - uses System.Diagnostics.Debug.WriteLine
NLog.Extensions.Logging - third party

## provider aliases
for use in config
Console, Debug, EventLog, EventSource, et.






