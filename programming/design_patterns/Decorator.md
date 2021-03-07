# Decorator
Provides a way of attaching new state and behavior to an object dynamically.

* Original object is unaware of any decorations

---------------------------------------------------
<<interface>>
IComponent
  +Operation()

class Component : IComponent
  +Operation()

class Decorator : IComponent
  -addedState
  -component : IComponent
  +Operation() ----- calls the sored component's operation
  +AddedBehavior()

Client <>- Component
       <>- Decorator

Decorator <>- IComponent
---------------------------------------------------

IComponent : identifies the classes of objects that can be decorated
(Component is one of these)
Decorator : a class that conforms to the IComponent interface and adds state
and/or behavior (there may be more than one such classes)

Decorator has `is-a` relationship with IComponent (implements IComponent).
Also, Decorator has `has-a` relationship with IComponent (contains
IComponent).

Client can use Component and Decorator objects interchangeably.

The Decorator can inherit from Component class as well and maintain an object
of that clas as well. This makes the Decorator class heavy as it has to carry
the inherited members of Component, which are avoided when conforming to an
Interface.


== Sources ==
Book: C# 3.0 Design Patterns

