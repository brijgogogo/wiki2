# variables

In Python, there are no "declarations". The existence of a variable begins with a statement that binds the variable (assignment).

myvariable = 42;
name = "hello"

Global variable: attribute of a module object
Local variable: lives in a function's local namespace

== assignment ==
* plain assignment:
<variable> = <expression>
a = 2
a = b = c = 0 # a,b,c are assigned 0
a,b,c = x # x has to be iterable, first items is assigned to a, second to b, so on. (unpacking assignment)
a,b = b,a # same as unpacking assignment. Here it swaps the values
first, *middle, last = x # x is a list. first, middle, last = x[0], x[1:-1], x[-1] . Extended unpacking

* augmented assignment / in-place assignment
uses augmented operator, which is binary operator followed by =. The target must already be bound
+=, -=, *=, /=, etc.
x+=y # x=x.__iadd__(y)


x=x+y : does not modify the object to which name x was originally bound. It rebinds the name x to refer to a new object.
x+=y : modifies the object to which name x is bound when that object has special method __iadd__; otherwise it rebinds the name x to a new object, just like x=x+y

== del statements ==
You can also unbind a variable, resetting the name so it no longer holds a reference (del statement).
unbinds references (does not delete objects)

== constants ==
A variable whose value does not change throughout a program
Constant is just another variable in Python.

PIE_VALUE = 3.14

There is no way to prevent it from changing. The naming convention indicates that this is a constant and should never be reassigned.
Convention: all the letters are in uppercase, and separate words are strung together with underscores.
it is typically placed at the top of the program.


== scope ==
scope is the amount of code over which a variable is active

Levels of scope:
1. global scope: Global variables are created at the top level of a program, in the main code. They maintain their values and are available throughout a program.
2. local scope: local variables are created inside a function. The scope of a local variable ranges from the point where it is first used in a function to the end of that function. Parameter variables are also local variables.

global/local name conflicts:
when global and local variable names are same, Python assumes that you are using local variables within a function. To tell python that you want to use global variable use global statement:
def myfun():
  global v1
  v1 = v1 + 1
v1 = 20
v1()
print(v1)

3. Class scope

