# delegates

System.Delegate
  Target : refers to instance (in case instance method is pointed)

## multicast delegates
Delegate instances can reference not just a single target method, but also a list of taret methods. The + and += operators combine delegate instances.
SomeDelegate d = SomeMethod1;
d = d + SomeMethod2;
or
d += SomeMethod2;

Delegates are invoked in the order they are added.

The - and -= operators remove the right delegate operand from the left deldage operand.
d -= SomeMethod1;


Delegates are immutable, so when you call += or -=, you are creating new delegate instance and assigning it to the existing variable.

## events
events are language feature that formalize broadcaster and subscriber pattern. It exposes just the subset of delegate features required for the broadcaster/subscriber mode. The main purpose of events is to prevent subscribers from interfering with one another.


By default event's accessors (+= and -=) are implemented. You can define them explicitly:

private EventHandler del1;

public event EventHandler del1
{
add { del1 += value; }
remove { del1 -= value; }
}


## lambda expressions
an unnamed method written in place of a delegate instance


### captured variables and closures
* a lambda expression can reference the local variables and parameters of the method in which it's defined (outer variables). Outer variables referenced by a lambda expression are called `captured variables`. A lambda expression that captures variables is called a `closure`.

* Captured variables are evaluated when the delegate is actually invoked, not when the variables were captured.

* Lambda expressions can themselves update captured variables.

* Captured variables have their lifetimes extended to that of the delegate.

* A local variable instantiated within a lambda expression is unique per invocation of the delegate instance.

* Capturing is internally implemented by "hoisting" the captured variables into fields of a private class. When the method is called, the class is instantiated and lifetime-bound to the delegate instance.

* When you capture the iteration variable of a for loop, C# treats the variable as though it was declared outside the loop.

* the iteration variable in a foreach loop is immutable, so it is expected to be treated as local to the loop body (since C# 5.0)

