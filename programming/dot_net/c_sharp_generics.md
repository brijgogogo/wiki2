# generics
Generics express reusability with a "template" that contains "placeholder" types.

## Generic Types
A generic type declares type parameters - placeholder types to be filled by the consumer of the generic type, which supplies type arguments.


## Generic Methods
Declares type parameters within the signature of a method.


## open generic types
Open generic types do not exist at runtime. Open generic types are closed as part of compilation. However, it is possible for an unbound generic type to exist at runtime - purely as a Type object:
typeof(A<>);
typeof(<A<,>);


## Generic constraints
where T : base-class
where T : interface
where T : class         // reference type constraint
where T : struct       // value-type constraint
where T : new()         // parameterless consructor constraint
where U : T             //naked type constraint

