# .NET Logging

* nlog


## .NET Logging Features
=> Log text (debug info, errors, timestamp)
=> Filtering (log level)
=> Protocols (multiple connections or targets, ability to change at runtime)
=> Graphical Viewer (filtertring by category, session, thread ID, process ID, log entry type, time-stamp, text message, view calls stack in separate window, view variable values, support multiple windows)
=> Analysis tool
=> Log categories or sessions (group related logging by application module or user session) (enable/disable)
=> Log file rotation
=> Logging settings from config file
=> Performance
=> Log objects, binary data, exception stack trace, screenshots, database results
=> Thread safe
=> Tracing method invocation
=> Log variables such as database connections, thread count, memory usage in separate file
=> Log all threads info (how long a thread is running, what it is doing)
=> Asynchronous logging / backlog queues

## Logging Frameworks
=> http://nlog-project.org/  (very fast, easy to configure)
=> https://serilog.net/
=> http://logging.apache.org/log4net/   (could be slow, pain to configure)
=> https://elmah.github.io/ (best for web)
=> System.Diagnostics.TraceSource (built in to .NET 2.0)
=> Enterprise Library logging

## Notes
=> If you are using NHibernate, it utilizes Log4Net directly.
=> In NHibernate v3 the dependency on log4net is thankfully removed - it's pluggable so you can use NLog if you wish.
=> NLog has a config file schema so you get "intellisense"
=> Log4net doesnt support asynchronous appender.

## Best Practices
=> Use a logging facade (e.g. Common.Logging, SimpleLoggingFacade) to avoid direct dependencies. (http://netcommon.sf.net/, https://slf.codeplex.com/)
=>

## Sources
http://www.dotnetlogging.com/concepts/
http://www.dotnetlogging.com/comparison/
https://www.loggly.com/blog/benchmarking-5-popular-net-logging-libraries/
https://stackoverflow.com/questions/576185/logging-best-practices
https://stackoverflow.com/questions/710863/log4net-vs-nlog
https://nblumhardt.com/2017/07/library-logging/
https://github.com/NLog/NLog/wiki/Tutorial
https://serilog.net/
https://github.com/serilog/serilog
https://messagetemplates.org/
https://github.com/damianh/LibLog
https://stackoverflow.com/questions/4091606/most-useful-nlog-configurations?noredirect=1&lq=1
http://www.nimaara.com/2016/01/01/high-performance-logging-log4net/
https://stackoverflow.com/questions/7044497/how-do-i-create-an-asynchronous-wrapper-for-log4net
http://www.ben-morris.com/using-asynchronous-log4net-appenders-for-high-performance-logging/
https://logging.apache.org/log4net/release/manual/introduction.html

:.net:

