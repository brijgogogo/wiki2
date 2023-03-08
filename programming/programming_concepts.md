# Programming Concepts

== Data Strucures ==
* Linked Lists
* Trees, Tries, Graphs
* Stacks & Queues
* Heaps
* Vectors / ArrayLists
* Hash Tables

== Algorithms ==
* Breadth-First-Search
* Depth-First-Search
* Binary Search
* Merge Sort
* Quick Sort

== Concepts ==
* Bit Manipulation
* Memory (Stack vs. Heap)
* Recursion
* Dynamic Programming
* Big O Time & Space

* Semantic Versioning
https://bytearcher.com/articles/semver-explained-why-theres-a-caret-in-my-package-json/

* Line ending format used in OS
Windows: CR (Carriage Return \r) and LF (LineFeed \n) pair
OSX,Linux: LF (LineFeed \n)

https://martinfowler.com/eaaCatalog/lazyLoad.html
https://en.wikipedia.org/wiki/Fluent_interface
http://www.csharpindepth.com/articles/general/singleton.aspx
http://docs.microsoft.com/en-us/dotnet/framework/performance/lazy-initialization
async, await c#
yield c#



# SOLID
5 Principles of object-oriented programming by Uncle Bob (Robert Martin)
- S : Single-Responsibility
  Every class/module has one specific responsibility.
- O : Open-Closed (Open to extension but closed to modification)
  Once the functionay has been implemented, if requirements change over time, changes are implemented by adding new code.
- L : Liskov Substitution
  Any subclass object should be substitutable for the superclass object from which it is derived.
- I : Interface Segregation
  A client should not be exposed to methods it does not need.
- D : Dependency Inversion
  High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.

## Favor Composition Over Inheritance
Design your types according to their functionality rather than nature.
In Composition Class references one or more objects of other classes, allows your to model a has-a association between objects. Eg. Person has a Salary is Employee, Person has a Salary and Perks is Manager. Employee will compose Person class.

## Separation of Concerns
Separates an application into units, with as little as possible overlapping between the functions of individual units.
Achieved by using modularizing, encapsulation, and arrangement in layers.
