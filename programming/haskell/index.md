# Haskell

- Purely functional
  - you tell computer what stuff is: functions, cannot change variable value
  - no side effects
  - referential transparency: functions return same result every time they are called with same parameters.

- Haskell is lazy. It won't execute functions untill it needs to show you a result.
- Haskell is statically typed.
- Type inference: no need to explicitly label every piece of code with a type.
- Haskell is elegant and concise.


## Tools needed
Compiler: Glasgow Haskell Compiler (GHC)
Haskell Platform (includes GHC, libraries)
https://www.haskell.org/platform/contents.html
Arch Linux:
  https://wiki.archlinux.org/index.php/Haskell
  pacman -S ghc stack cabal-install

## GHCi (interactive)
- load functions from myfunctions.hs file
:l myfunctions
- change the prompt
:set prompt "ghci> "
- add commands to ~/.ghci to execute them on start of ghci everytime.

## Operators
&& operator for conjunction (boolean and)
|| operator for disjunction (boolean or)
not operator to negate True or False
== equality
/= inequality

## [functions](functions)
## functions

## Infix Functions
multiplication operator * is an infix function, you call/apply it by sandwiching it between the two numbers we want to multiply.

## Prefix Functions
Function name comes first, then a space, then its parameters (also separated by spaces).
```haskell
succ 8
min 8 15
```
Function has the highest precedence of all the operations.

If a function takes 2 parameters we can call it as an infix functions using backticks
```haskell
10 `div` 5
```

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
