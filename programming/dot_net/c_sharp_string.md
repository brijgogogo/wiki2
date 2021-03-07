# string

represents an immutable sequence of Unicode characters.
It is a reference type. Its equality operators, howeven, follow value-type semantics.

## verbatim string literals
a sring literal prefixed with @ and does not support escape sequences and can span multiple lines.


## string interpolation
Console.WriteLine($"a squal has {x} sides");
Any valid C# expression of any type can appear within the braces and C# will convert the expression toa string by calling its ToString method or equivalent.
Must coplete on a single line, unless you specify the verbatim string operator.

