# middleware
- series of components that form the application request pipeline
- responsible for handling requests and responses passing through the pipeline.
- Also called request delegates.
- The order in which the request delegates are defined is the order in which they will execute the request, and afterwards response in reverse.
- Each middleware component in the request pipeline is responsible for invoking the next component in the pipeline or short-circuiting the pipeline.
- middleware are registered in order in Startup.Configure() method

# [built in midelwares](built-in-midelwares)
# [custom middlwares](custom-middlwares)

Exception handling middleware should be added first so as to catch any errors.



## sources
https://docs.microsoft.com/en-us/aspnet/core/fundamentals/middleware/index

