# Flyweight
Provides ways to reduce object count. Flyweight pattern is used when we need
to create a large number of similar objects (say 105). One important feature
of flyweight objects is that they are immutable.

In Flyweight pattern we use a HashMap/Dictionary that stores reference to the object
which have already been created, every object is associated with a key. Now
when a client wants to create an object, he simply has to pass a key
associated with it and if the object has already been created we simply get
the reference to that object else it creates a new object and then returns it
reference to the client.

* Intrinsic state
Suppose in a text editor when we enter a character, an object of Character
class is created, the attributes of the Character class are {name, font,
size}. We do not need to create an object every time client enters a character
since letter ‘B’ is no different from another ‘B’ . If client again types a
‘B’ we simply return the object which we have already created before. Now all
these are intrinsic states (name, font, size), since they can be shared among
the different objects as they are similar to each other.

* Extrinsic state
Now we add to more attributes to the Character class, they are row and column.
They specify the position of a character in the document. Now these attributes
will not be similar even for same characters, since no two characters will
have the same position in a document, these states are termed as extrinsic
states, and they can’t be shared among objects.

--------------------------------------------
<<interface>>
IFlyweight
  +Operation()

class Flyweight : IFlyweight
  +Operation() ----- extrinsicState computed at runtime

class FlyweightFactory
  -flyweights: Dictionary

class Client
  -unSharedState

--------------------------------------------

Client: computes and maintains the unshared state of the objects.
IFlyweight: interfae through which Flyweights can receive and act on intrinsic
state.
FlyweightFactory: creates and manages unique Flyweight objects.
Flyweight: stores intrinsic state that is sharable among all objects.



== Sources ==
https://www.geeksforgeeks.org/flyweight-design-pattern/

