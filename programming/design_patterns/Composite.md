# Composite

Arranges structured hierarchies so that single components and group of
components can be treated in the same way. Typical operations on the
components include add, remove, display, find, and group.

`Components` and `Composites` of those components, agree to conform to an
interface of common operations. Composite objects consist of Components, and
in most cases, operations on a Composite are implemented by calling the
equivalent operations for its Component objects.

-----------------------------------------
<<interface>>
IComponent
  +Operation()

class Component : IComponent
  +Operation()

class Composite : IComponent
  -list: IComponent
  +Operation()   - for each component call its operation

Client <>- IComponent
-----------------------------------------

Example: photos (Components) arrange in groups like Albums, by time
(Composite).


