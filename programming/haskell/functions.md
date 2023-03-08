# Functions
a mapping that takes one or more arguments and produces a single result.
```haskell
double x = x + x
double 3
double (double 2)
sum [1,2,3,4,5]
```

Every function has a type that specifies the nature of its arguments and results, which is automatically inferred from the definition of the function.
Num a => [a] -> a
Above states that for any type "a" of numbers, the function maps a list of such numbers to a single such number.

## call a functions
```haskell
succ 8
min 8 15
div 7 3
10 `div` 5
div 7 (3 + 2)
mod 7 3
max 2 5
```

- Infix Functions
  multiplication operator `*` is an infix function, you call/apply it by sandwiching it between the two numbers we want to multiply.
- Prefix Functions
  Function name comes first, then a space, then its parameters (also separated by spaces).
  Function has the highest precedence of all the operations.
  If a function takes 2 parameters we can call it as an infix functions using backticks.



## Function definition
```haskell
-- basic definition.
-- function names can't begin with capital letters.
  doubleMe x = x + x
-- if no parameters its called name/definition
myName = "brij"
-- if statement has mandatory else. Every function should return some value.
-- if is an expression that must return a value, not a statement
myFun x = if x < 10
            then x
            else x+2
-- apostrophe is a valid character in function name
-- ' is usually used to denote a strict or modified version of function by same name.
myFun' x = (if x < 10 then x else x+2) + 5
```

## function priority
function application has higher priority than all other operators
f a + b means (f a) + b

## standard prelude
library file with large number of built-in functions like +, *, functions on list, etc.
- list functions
  head [1, 2, 3, 4, 5]
  tail [1, 2, 3, 4, 5]
  [1, 2, 3, 4, 5] !! 2
  take 3 [1, 2, 3, 4, 5]
  drop 3 [1, 2, 3, 4, 5]
  length [1, 2, 3, 4, 5]
  sum [1, 2, 3, 4, 5]
  product [1, 2, 3, 4, 5]
  [1, 2, 3] ++ [4, 5]
  reverse [1, 2, 3, 4, 5]

