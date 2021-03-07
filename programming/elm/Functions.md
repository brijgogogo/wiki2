# functions
sayHello name = "Hello" ++ name ++ "."

sayHello "Brij"

- No parenthesis
- No return keyword, as Elm is an expression-oriented language.
- An expression is anything a programming language can evaluate to produce a value.
- use whitespace to delimit multiple parameters

- use backslash for multiline functions
checkCount num = \
  if num == 1 then \
    "one" \
  else if num > 1 then \
    "more" \
  else \
    "none"


== higher order functions ==
- Functions are first-class citizens in Elm. They are values just like strings, numbers, booleans.
- function arguments and return values can be functions
higher-order function: function that takes other function as argument or returns a function

== Anonymous functions ==
- funName "arg1" (\arg -> "hi" ++ arg) "arg3"
Anonymous function: has no name, great for creating functions on the fly.
use \ and list the parameters, then use -> to separate the parameters from the body of the function.


== Currying, Partial application ==
- Elm functions are curried (they take one argument at a time)
If a function accepts two arguments and you call it with two arguments, you are really calling it with one argument at a time. When you call it with the first argument, Elm returns another function that is waiting on the value for the second argument.
Filling in one argument at a time is known as "partial application". Calling a function with only some of its arguments is "partially applying it". Calling a function with all its arguments is "fully applyig it".

