# partials

## partial types
Partial types allow a single class, struct, or interface to be declared in multiple parts and usually across multiple source files.

 Partial types are declared by adding the partial modifier to the type declara- tion. This must be present in every part.

 ## partial methods
methods declared without a body in one part and then optionally implemented in another part. Partial methods are implicitly private and must be void with no out parameters. (It’s fine to use ref parameters.) At compile time, only partial methods that have implementations are retained; if a partial method hasn’t been implemented, all calls to it are removed.


## source
C# in Depth - Jon Skeet


