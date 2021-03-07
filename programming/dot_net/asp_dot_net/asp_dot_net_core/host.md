# host
configure host: IWebHostBuilder
- GetSetting
- UseSetting
- CaptureStartupErros
- UseContentRoot: base path for content
- UseWebRoot: relative path for serving static assets
- UseEnvironment : or ASPNETCORE_ENVIRONMENT environment variable
- UseUrls : urls where server listens
- UseIISIntegration: tell the web host to work behind IIS
- UseHttpSys: use HTTP.sys
- UseServer(IServer): use third party server

IWebHost
- Run: run the host, blocking any further execution of the application until the host terminates
- Start: non-blocking

IHostingEnvironment
provides for context of current execution environment like, application name, environment name, file providers

IApplicationLifetime
for handling events like application start, stop

