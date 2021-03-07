# error handling

// Startup.Configure
if(env.IsDevelopment())
{
  app.UseDevelopmentExceptionPage();
}
else {
  app.UseExceptionHandler("/Error");
  app.UseHsts();
}


app.UseExceptionHandler(app =>
{
  app.Run(async context =>
  {
    context.Response.StatusCode = 500;
    context.Response.ContentType = "text/html";

    await context.Response.WriteAsync("<html><body>");
    await context.Response.WriteAsync("ERROR");

    var ex = context.Features.Get<IExceptionHandlerPathFeature>();
    var msg = ex?.Error.Message

    await context.Response.WriteAsync("</body></html>");

  });
});


// default text-only handlers for common error status codes
app.UseStatusCodePages();

