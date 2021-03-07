# C# 7.0

C# 7.0 ships with Visual Studio 2017

## New features
* underscore to improve numeric readability
in million = 1_000_000;
var b = 0b1010_1011_1100

* delcare out variables on the fly
bool s = int.TryParse("123", out int result);
ConsoleWriteLine(result);

* discard unintered out parameters with underscore
SomeBigMethod(out _, out _, out int x, out _);
ConsoleWriteLine(x);

* include variables on the fly with `is` operator (called `pattern variables`)
  void Foo(object x) {
    if(x is string s) {
      Console.WriteLine(s.Length);
    }
  }

switch also supports patterns
switch(x) {
  case int i:
    Console.WriteLine("it's an int!");
    break;
  case string s:
    Console.WriteLine(s.Length);
    break;
  case bool b when b == true:
  ......
  case null:
  ......
}

* local methods : method declared inside another method, visible only to the containing method, can capture local variables like lambda expressions.
void WriteCubes() {
  ConsoleWriteLine(Cub(3));
  ConsoleWriteLine(Cub(4));
  ConsoleWriteLine(Cub(5));

  int Cube(int value) => value * value * valuie;
}

* C# 6 introduced the expression-bodied "fat-arrow" syntax for methods, read-only properties, operators, and indexers. C# 7 extends this to constructors, read/write properties, and finalizers:
public class Person
{
  string name;
  public Person(string name) => Name = name;

  public string Name
  {
    get => name;
    set => name = value ?? "";
  }

  ~Person() => Console.WriteLine("finalize");
}

* deconstructor pattern: Constructor typically takes a set of values (as parameters) and assigns them to fields, a `deconstructor` assigns fields to a set of variables.
//example assuming Person class above
public void Deconsruct(out string firstName, out string lastName)
{
  int spacePos = name.IndexOf(' ');
  firstName = name.Substring(0, spacePos);
  lastName = name.Substring(spacePos + 1);
}

vor joe = new Person("Joe Bloggs");
var (first, last) = joe; // calling Deconstructors
Console.WriteLine(first);

* Tuples : storing a set of related values (syntactic sugar for System.ValueTuple<...> generic structs)
var bob = ("Bob", 23);
Console.WriteLine(bob.Item1);
Console.WriteLine(bot.Item2);

var tuple = (Name: "Bob", Age: 23);
Console.WriteLine(tuple.Name);
Console.WriteLine(tupe.Age);

With tuples, functions can return multiple values:
static (int row, int column) GetFilePosition() => (3, 10);

static void Main()
{
  var pos = GetFilePosition();
  Console.WriteLine(pos.row);
  Console.WriteLine(pos.column);


  or

  (int row, int column) = GetFilePosition();
  Console.WriteLine(row);
  Console.WriteLine(column);
}

* throw expressions : throw was always a statement, not now
public string Foo() => throw new NotImplementedException();
value == null ? throw new ArguentException("value") : ....

* ref locals
int[] numbers { 0, 1 };
ref int numRef = ref numbers[1];
numRef = 5; // numbers[1] be comes 5
numRef is reference to numbers[1], when we modify numREf, we modify the array element.
The target for a ref local must be an array element, field, or local variable. It cannot be a property.

* ref returns
satic string X = "old value";
static ref string GetX() => ref X;

static void Main()
{
  ref string xRef = ref GetX();
  xRef = "new value";
  Console.WriteLine(X); // new value
}

