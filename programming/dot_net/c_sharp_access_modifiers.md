# access modifiers
* public
Fully accessible. Implicit accessibility for members of an enum or interface.
* internal
accessible within the containing assembly or friend assemblies. This is the default accessibility for non-nested types.
* private
accessible only within the containing type. Default for members of a class or struct.
* protected
accessible only within the containing type or subclass
* protected internal
union of protected and internal


## Friend assemblies
expose internal members to other friend assemblies by adding the System.Runtime.CompilerServices.InternalsVisibleTo assembly attribute, specifying the name of the friend assembly:
[assembly: InternalsVisibleTo("Friend")]

