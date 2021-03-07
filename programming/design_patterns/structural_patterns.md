# Structural Patterns
Structural patterns are concerned with how classes and objects are composed to
form larger structures.

* [Decorator](Decorator)
* [Proxy](Proxy)
* [Bridge](Bridge)
* [Composite](Composite)
* [Flyweight](Flyweight)
* Adapter
* Facade


UML Summay
--------------------
* Class
    +(public)
    -(private)
    #(protected)

* <<interface>>
  IInterface
    +operation()

* Inheritance
  A
  ^
  |
  B
  B inherits from A

* Realization
  A
  ^
  |
  |
  B
  B implements A

* Association
  A-B : A and B call and access each other's elements
* Association (one way)
  A->B : A can call and access B's elements, but not vice versa.
* Aggregation
  A<>-B : A has B, and B can outlive A
* Composition
  A<*>-B : A has B, and B depends on A


