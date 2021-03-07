# AsyncLocal<T>
Represents ambient data that is local to a given asynchronous control flow, such as an asynchronous method.

constructors:
- AsyncLocal<T>()
- AsyncLocal<T>(Action<AsyncLocalValueChangedArgs<T>>) : with change notification


static AsyncLocal<string> _asyncLocalString = new AsyncLocal<string>();

_asyncLocalString.Value = "Value 1";


## sources
https://docs.microsoft.com/en-us/dotnet/api/system.threading.asynclocal-1?view=netframework-4.8

