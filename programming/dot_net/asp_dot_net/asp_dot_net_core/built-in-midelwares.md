# built-in middlewares
most featues of ASP.NET Core MVC are provided via middlewares

- Authentication
- Cookie Policy
- CORS
- Excepton Handling
- Forwarded Headers
- Health Check
- Https Redirection
- response caching
- Response Compression
- compression
- routing
- sessions
- static files
- url rewrite.
- MVC
- Routing
- Web Sockets

Below middleware extensions are exposed on IApplicationBuilder through Microsoft.AspNetCore.Builder namespace.

app.UseExceptionHandler("/Error"); // development environment: app.UseDeveloperExceptionPage(), app.UseDatabaseErrorPage();
app.UseHsts();
app.UseHttpsRecirection();
app.UseStaticFiles();
app.UseCookiePolicy();
app.UseAuthentication();
app.UseSession();
app.UseResponseCompression();
app.UseMvc();


