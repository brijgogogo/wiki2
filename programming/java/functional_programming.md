# functional programming in Java
Functional programming focuses on computing results from functions rather than performing actions on objects.

* objects are immutable
* create new objects instead of modifying


## lambdas functions
anonymous functions

() -> { return "Hello"; }
n -> n % 2 != 0;


public interface Answerable
{
  String answer();
}


Answerable phone = () -> {return "Hello";};
System.out.println(phone.answer());

