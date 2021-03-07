# ThreadStaticAttribute

Each executing thread has a separate instance of the field, and independently sets and gets values for that field. If the field is accessed on a different thread, it will contain a different value.

[ThreadStatic] static double previous = 0.0;


## sources
https://docs.microsoft.com/en-us/dotnet/api/system.threadstaticattribute

