# environments
ASP.NET Core reads that environment variable at app startup and stores the value in an IHostingEnvironment implementation.
environment variable: ASPNETCORE_ENVIRONMENT (default: Production)
IHostingEnvironment.EnvironmentName

values: Development, Staging, Production


void Configure(IApplicationBuilder app, IHostingEnvironment env)
{
  if(env.IsDevelopment())
  {
    app.UseDeveloperExceptionPage();
  }

  if(env.IsProduction() || env.IsStaging() || env.IsEnvironment("Staging_2"))
  {
    app.UseExceptionHandler("/Error");
  }
}


## local machine
environment for local machine development can be set in Properties\launchSettings.json
{
  "profiles": {
    "MyEnv": {
      "commandName": "cmd",
      "launchBrowser": true,
      "applicationUrl": "http://localhost:5000",
      "environmentVariables" : {
        "ASPNETCORE_ENVIRONMENT": "Staging"
      }
    }
  }
}

when app is launched with "dotnet run", first profile with "commandName": "Project" is used.
commandName: IISExpress, IIS, Project (launches Kestrel)

## UI for launchSettings.json file
Visual Studio -> project Properties -> Debug

## vscode
.vscode/launch.json (not used by dotnet run)
{
  "configurations" : [
    "env" : {
      "ASPNETCORE_ENVIRONMENT" : "Development"
    }
  ]
}

## command line
- per-session
cmd: set ASPNETCORE_ENVIRONMENT=Development
powershell: $ENV:ASPNETCORE_ENVIRONMENT = "Development"

- global
cmd: setx ASPNETCORE_ENVIRONMENT Development /M
powershell: [Environment]::SetEnvironmentVariable("ASPNETCORE_ENVIRONMENT", "Development", "Machine")


## web.config

## startup class
class whose name suffix matches the current environment is prioritized. If a matching Startup{EnvironmentName} class isn't found, the Startup class is used.

class StartupDevelopment
class StartupStaging
class StartupProduction
class Startup

var asm = typeof(Startup).GetTypeInfo().Assembly.FullName;
WebHost.CreateDefaultBuilder(args).UseStartup(asm);

## startup class methods
Configure and ConfigureServices support environment-specific versions
ConfigureStagingServices()
ConfigureServices()
ConfigureStaging()
Configure()

