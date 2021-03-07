# equality coparison

## two kinds of equality:
* value equality
two values are equal in some sense
* referential equality
two references refer to exactly the same object

by default:
* value types use value equality
* reference types use referential equality

int x = 5;
int y = 5;
x == y; // true

var f1 = new ClassA() { X = 5 };
var f2 = new ClassA() { X = 5 };
f1 == f2; // false
var f3 = f1;
f1 == f3; // true


## standard equality protocols:
* == & != operators
* virtual Equals method in object
* IEquatable<T> interface

object class's == operator uses referential equality.

object x = 5;
object y = 5;
x == y ; // false
x.Equals(y); // true
`Equals` is resolved at runtime - according to the object's actual type. In this case, it calls Int32's Equals method, which applies value equality.


Object' class has a static method Equals that takes two arguments. This provides a null-safe equality comparision.


Use `object.ReferenceEquals` method to force referential equality comparison. This is required where == operator is overload and Equals method is also overloaded.

## IEquatable<T>
object.Equals forces boxing on value types.

public interface IEquatable<T>
{
  bool Equals(T other);
}

