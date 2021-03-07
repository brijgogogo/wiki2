# generics

## Generic Variance
It's about safety converting between generic types based on their type arguments.

## Covariance: IEnumerable<T> method only allow you to return values of type T, so below is valid:
IEnumerable<string> strings = new List<string> { "a", "b", "c" };
IEnumerable<object> objects = strings;


## Invariance: Methods in IList<T> allow values of type T as inputs as well as outputs, so below is invalid
IList<string> strings = new List<string> { "a", "b", "c" };
IList<object> objects = strings; // compiler error
objects.Add(new object()); // logically incorrect
string s = strings[3]; // logically incorrect


## Contravariance: In Action<T>, values are only used as input. Variance applies here in opposite direction. So below is valid:
Action<object> objectAction = obj => Console.WriteLine(obj);
Action<string> stringAction = objectAction;
stringAction("Print me");


In C#,variance can be specified only for interfaces and delegates.
- public interface IEnumerable<out T>
- public delegate void Action<in T>
- public interface IList<T>
- public TResult Func<in T, TResult out>(T arg)

https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)

- covariant: preserves the ordering of types (<=)
- contravariant: reverses the ordering
- bivariant: both above apply
- invariant/nonvariant: none apply

Animal <= Cat
- IEnumerable<Cat> is a subtype of IEnumerable<Animal>
- Action<Animal> is a subtype of Action<Cat>.

## sources
https://blogs.msdn.microsoft.com/ericlippert/2007/10/17/covariance-and-contravariance-in-c-part-two-array-covariance/
C# in Depth - Joh Skeet

