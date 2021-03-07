# C# Types

A type defines the blueprint for a value.

A variable denotes a storage location that can contain different values over time. All values in C# are instances of a type.

## Predefined types
Also known as built-int types.
Types that are specially supported by the compiler.
Instantiated simply by using literal.

value types:
* numeric:
  * signed integer (sbyte, short, int, long)
  * unsigned integer (byte, ushort, uint, ulong)
  * real number (float, double, decimal)
* logical (bool)
* characer (char)

reference types:
* String (string)
* Object (objec)

Predefined types in C# alias Framework types in System namespace.
example: int and System.Int32


The set of predefined value tyeps excluding decimal are known are `primitive types` in the CLR. Primitive types are so called because they are supported directly via instructions in compiled code, and this usually translates to direct support on the underlying processor.

System.IntPtr, System.UIntPtr are also primitive.



## custom types
classes

Instantiated by using new keyword. It calls object's constructor.o


## All C# types fall into the following categories:
* Value types
* Reference types
* Generic type parameters
* Pointer types

## Value types
* Comprise most built-in types as well as custom struct and enum types.
* the content of value type variable or constant is simply a value
* the assignment of value-type instance always copies the instance
* value-type instances occupy precisely the memory required to store their fields

## Reference types
* Comprise all class, array, interface, delegate types (also string)
* has two parts: an object and the reference to that object
* content of reference type variable is a reference to an object that contains the value
* assigning a reference-type variable copies the reference, not the object instance
* this allows multiple variables to refer to the same object
* a reference can be assigned the literal `null`, indicating that the reference points to no object
* reference types require separate allocations of memory for the reference and object.
* the object consumes as many bytes as its fields, plus additional administrative overhead.
* The precise overhead is intrinsically private to the implementation of the .NET runtime, but at a minimum, the overhead is eight bytes, used to store a key to the object's type, as well as temporary information such as its lock state for multi-threading and a flag to indicate whether it has been fixed from movement by the garbase collector.
* Each reference to an object requires an extra four or eight bytes depending on whether the .NET runtime is running on a 32- or 64-bit platform.


## numeric suffixes for types:
explicitly define the type of a literal (otherwise compiler infers)
long: L
float: F
double: D (technocally redundant, as all literals with a decimal point are inferred to be double)
decimal: M
uint: U
ulog: UL


## variables
a variable can be: local variable, parameter (value, ref, out), field (instance, static), array element

## stack and heap
the stack and heap are the places where variables and constants reside. Each has very different lifetime semantics.

## stack
Stack is a block of memory for storing local variables and parameters. The stack logically grows and shrinks as a function is entered and exited.

## heap
Heap is a block of memory in which objects (i.e., reference-type instances) reside. Whenever a new object is created, it is allocated on the heap, and a reference to that object is returned. During a program's execution, the heap starts filling up as new objects are reated. The runtime has a garbase collector that periodically deallocates objects from the heap, so your program does not run out of memory.

Value-type instances (and object references) live wherever the variable was declared. If the instance was declared as a field within a class type, or as an array element, that instance lives on the heap.

The heap also stores static fields. Unline objects allocated on the heap (which can get garbage-collected), these live until the application domain is torn down.

