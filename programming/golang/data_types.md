# Data Types, Type Conversion, Variables

## Zero value
If you declare a variable without assigning it a value, that variable will contain the zero value for its type.
- for numeric types, zero value is 0.
- zero value of string is empty string.
- zero value of bool is false

## Literals
refers to writing out a number, character, string.
- [integer](integer.md) literals, with underscores for readability (1_234):
  - base ten
  - others with prefixes 0b (binary)
  - 0x (hex)
  - leading 0 with no letter (octal)
- floating point literals
- Rune literals: in single quote
  - single unicode characters: 'a'
  - 8-bit octal numbers: '\141'
  - 8-bit hex '\x61'
  - 16-bit hex '\u0061'
  - 32-bit hex '\U00000061'
  - '\n', '\t', '\'', '\"', '\\'
- interpreted string literals: contains zero or more rune literals: "hello \n \"world\""
- raw string literal: delimited with backquotes/backtick, can contain any literal character except backquote.
  `hello
  "world"`

Literals in GO are untyped, they can interact with any variable that's compatible with the literal (e.g., integer literal can be assigned to floating point variable).


## Built-in Data types
Go is statically typed.

- booleans
   var flag bool // zero value: false
   var flagNew = true

- numbers
  - integer types : holds whole numbers:
    - int8, int16, int32, int64, uint8, uint16, uint32, uint64
    - byte is alias for unint8
    - on 32-bit CPU, int is 32-bit signed integer like int32
    - On 64-bit CPU, int is 64-bit signed integer like int64
    - Due to above inconsistency mathematical operations between int and int32/int64 without type conversion is compile error.
    - Integer literals default to int.
    - uint, follows same rules as int.
    - rune
    - uintptr
  - floating point types:holds numbers with a fractional part
    - float32
    - float64
    - Dividing nonzero floating point by - returns +Inf or -Inf.
    - Dividing a floating point 0 by 0 return NaN (Not a Number).

- `[strings](strings.md)`
- `[runes](./runes.md)`




## conversions
- For clarity, Go doesn't allow automatic type promotion between variables, you must use type conversion when variable types do not match.

```go
var a int = 5
var b float64 = 5.5
var c float64 = float64(a) + b
var d int = a + int(b)
```
Due to this clarity, Go doesn't allow truthiness, i.e., nonzero number, nonempty string cannot be interpreted as a boolean true.


## nil
nothing/null


## scope
function block
package block (outside function)

Each variable you declare has a scope: a portion of your code that it's visible within.

A variable's scope consists of the block it's declared in and any blocks nested within that block.


## variables
```go
var x int     // gets assgined zero value
x = 5

var x int = 5

var x = 5   // default type of an integer literal is int

var x, y int

var x, y int = 5, 6

var x, y = 5, 6

var x, y = 5, "six"  // different types

// declare multiple variables at once
var (
  a int
  b = 20
  c int = 5
  d, e = 5, "six"
  f, g string
)

var myName = "name" // Go uses camel case

x := 5  // short variable declaration, within a function
a, b := 5, "six"

a := 5
a, b := 6, 7 // if at lease there in one new variable, you can assign values to existing variables


// write-only variable (ignore result)
_, err = getError()
// underscore (_) :assigning a value to blank identifier discards it
input, _ := reader.ReadString('\n')
```
Package-level variables whose values change are a bad idea
- it can be difficult to track the changes made to it
- makes hard to understand how data is flowing through the program

## constants
Way to give names to literals. They can hold values that the compiler can figure out at compile time.
```go
  // can be at package-level or function level
  const x int = 5   // typed constant, can only be directly assigned to a variable of that type

  const x = 5       // untyped constant, works like a literal
    var a int = x
    var b float64 = x
    var c byte = x

  const x = 5 + 5
  const x = iota
  const (
    x = 5
    y = 6
  )
```

## no unused variable
Every declared local variable must be read. Unread package-level variables are allowed.

## short variable declaration & assignment
When same variable name is declared twice in the same scope, we get a compile error.
As long as at least one variable name in a short variable declaration is new, it's allowed. The new variable names are treated as a declaration, and the existing names are treated as an assignment.

  a := 1 // declare a
  b, a := 2, 3 // declare b, assign to a
  a, c := 4, 5 // assign to a, declare c

## constants
values that never change
You must assign a value at the time of declaration.

  const Count int = 3
  Const Count = 4


## sources
https://golang.org/ref/spec#String_literals

