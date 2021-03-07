# Bridge
Decouples an abstraction from its implementations, enabling them to vary
independently.

Useful when a new version of software is brought out that will replace an
existing version, but the older version must still run for its existing client
base. The client code will not have to change, as it is conforming to a given
abstraction, but the client will need to indicate which version it wants to
use.

---------------------------------------------------
class Abstraction
  -bridge : Bridge
  +Operation() - calls OperationImp in bridge

<<interface>>
Bridge
  +OperationImp()

class ImplementationA : Bridge
  +OperationImp()

class ImplementationB : Bridge
  +OperationImp()

Client - Abstraction
Abstraction <>- Bridge
---------------------------------------------------

Abstraction: the interface that the client sees.
Operation : a method that is called by the client.
Bridge: an interface defining those parts of the Abstraction that might vary.
OperationImp: method in Bridge that is called from the Operation in
Abstraction.

Example use: in graphics, different displays have different capabilities and
drivers. These would be the implementations of the Bridge pattern, and the
Bridge would be an interface of their essential capabilities. The Client calls
the Abstraction to display something, and the Abstraction can examine the
properties of the one or more Bridge instances (drivers) it is holding and
select the most appropriate one for the task.


== Sources ==
Book: C# 3.0 Design Patterns
https://www.geeksforgeeks.org/bridge-design-pattern/
https://stackoverflow.com/questions/319728/when-do-you-use-the-bridge-pattern-how-is-it-different-from-adapter-pattern

