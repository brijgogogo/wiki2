# variables


## declaration & assignment
var x int
x = 5

var x int = 5

var x = 5

var x, y int

var x, y = 5, 6

x := 5 (short variable declaration)


## constants
  const x int = 5
  const x = 5
  const x = iota

- write-only variable (ignore result)

  _, err = getError()


## Zero value
If you declare a variable without assigning it a value, that variable will contain the zero value for its type.
- for numeric types, zero value is 0.
- zero value of string is empty string.
- zero value of bool is false


## no unused variable
Go doesn't allow us to declare a variable unless we use it.
- underscore (_) :assigning a value to blank identifier discards it

  input, _ := reader.ReadString('\n')

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

