# configuration
- uses key-value pairs
- IConfiguration is available in the app's DI container
- keys are case-insensitive
- keys are flattened: section01:key1
- environment variables use __ (double underscore) as separator, and is converted to colon for use in coding
- values are strings
- built-in configuration providers for .json, .xml, environment variables, command line arguments.

## package
Microsoft.Extensions.Configuration

## config providers
- Environment variables config provider
- File Configuration provider
- Command-line config provider

Host configuration key-value pairs become part of the app's global configuration.

## CreateDefaultBuilder provides default confguration:
Host config:
  - environment variables (prefixed ASPNETCORE_)
  - command-line arguments
App config:
  - appsettings.json
  - appsettings.{Environment}.json
  - environment variables
  - command line arguments

## custom
WebHost.CreateDefaultBuilder(args)
    .ConfigureAppConfiguration((hostingContext, config) =>
    {
      config.SetBasePath(Directory.GetCurrentDirectory());
      config.AddInMemoryCollection(someDictionary);
      config.AddJsonFile("file.json", optional: false, reloadOnChange: false);
      config.AddXmlFile("file.xml", optional: false, reloadOnChange: false);
      config.AddEFConfiguration(options => options.UseInMemoryDatabase("InMemoryDb"));
      config.AddCommandLine(args);
    })

other way
var config = new ConfigurationBuilder()
      .AddCommandLine(args)
      .Build();
var host = new WebHostBuilder()
      .UseConfiguration(config)

## comand line arguments
key=value
key=                             // null value
--key=value
--key value
/key=value
/key value


## getting values
config.GetValue<int>("Key", <defaultValue>);
config.GetSection("<section>").GetChildren();
config.GetSection("<section>:<subSection>").Exists();

var poco = new Poco();
config.GetSection("poco").Bind(poco);   // Bind is in Microsoft.Extensions.Configuration.Binder

var poco = config.GetSection("poco").Get<Poco>();


//binding to arrays with keys like <key>:<subKey>:<index> or json array: "propertyName" : ["", ""]
config.GetSection("arraySection").Bind(objectWithArrayProperty);


## custom configuration provider
IConfigurationSource
ConfigurationProvider

## access config
- startup
public Startup(IConfiguration config) { }
var value = _config["key"];
- razor pages/MVC view
@inject IConfiguration Configuration
@Configuration["key"]


## options pattern
- to represent a group of related settings
- Option class with public read-write properties for each setting
- Microsoft.Extensions.Options.ConfigurationExtensions
-


public class MyOptions
{
  public MyOptions()
  {
    Option1 = "v1";
  }

  public string Option1 {get;set;}
  public int Option2 {get;set;} = 5;
}

services.Configure<MyOptions>(Configuration)
services.Configure<MyOptions>(Configuration.GetSection("subsection"))

public IndexModel(IOptionsMonitor<MyOptions> optionsAccessor)
{
  var options = optionsAccessor.CurrentValue;
}

{
  "option1" : "vvv",
  "option2" : -1
}


## sources
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/configuration/index

