# IIS
- IIS > Server > Sites > Add Website > set name, physical path
Binding: specify port (typically 80), hostname like api.demo.io
Path is typically C:\inetpub\<your_website>
IIS should have access rights to the path
- IIS > Application Pools > <Your_Pool> > set .NET CLR version to "No Managed Code"

- dotnet publish
uses framework-dependent deployment (FDD), i.e., application will be deployed only with its third-party dependencies, without the .NET Core framework and runtime, assuming it will already be present on target system.

Other deployment model is self-contained deployment, which has all dependencies.

- web.config
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <system.webServer>
    <handlers>
      <add name="aspNetCore" path="*" verb="*" modules="AspNetCoreModule" resourceType="Unspecified"/>
    </handlers>
    <aspNetCore processPath="dotnet" arguments=".\YourApp.dll" stdoutLogEnabled="false" stdoutLogFile=".\logs\stdout"/>
  </system.webServer>
</configuration>

aspNetCore IIS handler is responsible for relaying the requests through to the applicaiton (executing dotnet .\YourApp.dll on start)

ASP.NET Core module must be installed in IIS to has requests be relayed to Kestrel.

