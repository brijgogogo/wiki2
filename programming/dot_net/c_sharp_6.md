# C# 6.0

C# 6.0 shipped with Visual Studio 2015.

* Roslyn
It features a new-generation compiler, completely written in C#. Known as project `Roslyn`, the new compiler exposes the entire compilation pipeline via libraries, allowing you to perform code analysis on arbitrary source code. The compiler itself is open-source.

* null-conditional ("Elvis") operator
avoids having to explicitly check for null before calling a mehod or accessing a type member.
StringBuilder sb = null;
string result = sb?.ToString(); // result is null

* expression-bodied functions
Allows methods, properties, operators, and indexers that comprise a single expression to be written more tersely, in the style of a lambda expression.
public int TimesTwo(int x) => x * 2;
public string SomeProperty => "Property Value";

* property initializers
assign an initial value to an automatic property
public DateTime TimeCreated {get;set;} = DateTime.Now;
public DateTime TimeCreated {get;} = DateTime.Now;

* index initializers
allows single-step initialization of any type that exposes an indexer.
var dict = new Dictionary<int, string>()
{
  [3] = "three",
  [10] = "ten"
}

* string interpolation
succinct alternative to string.format
string s = $"It is {DateTime.Now.DayOfWeek} today";

* exception filters
apply a condition to a catch block
try
{
  html = new WebClient().DownloadString("http://asef");
}
catch(WebException ex) when (ex.Status == WebExceptionStatus.Timeout)
{
....
}

* using static
lets you import all the static members of a type, so that you can use those members unqualified.
using static System.Console;
WriteLine("hello");

* nameof operator
returns the name of a variable, type, other symbol.
int capacity = 123;
string x = nameof(capacity); // x is "capacity"
string y = nameof(Uri.Host); // y is "Host"

* allowed to `await` inside catch and finally blocks

