# Data Types

Go is statically types, which means it knows what the types of your values are even before your program runs.


- [strings](strings.md)
- [runes](./runes.md)
- booleans : true or false
- numbers
  - int : holds whole numbers
  - float64 : holds numbers with a fractional part (uses 64 bits)


## conversions
to convert one from to another type, just provide the type you want to convert a value to, immediately followed by the value you want to convert in parentheses.

var length float64 = 1.2
var width int = 2
var area = length*float64(width)


## nil
nothing/null


## scope
Each variable you declare has a scope: a portion of your code that it's visible within.

A variable's scope consists of the block it's declared in and any blocks nested within that block.
