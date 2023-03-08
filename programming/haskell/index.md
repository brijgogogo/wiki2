# Haskell

- purely functional
  - functions cannot change variable value
  - no side effects
  - referential transparency: functions return same result every time they are called with same parameters.
- lazy evaluation. It won't execute functions untill it needs to show you a result.
- statically typed.
- type inference: no need to explicitly label every piece of code with a type.
- elegant and concise.


## Haskell Toolchain
- GHC (Glasgow Haskell Compiler) - compiler
- GHCi (GHC interactive) - REPL
- cabal: build tool
- stack: build tool based on snapshots
- HLS (Haskell Language Server) - provides LSP support
- ghcup - Haskell toolchain installer (installs GHC, cabal, stack, hsl) (supports multiple versions)
(https://www.haskell.org/ghcup/install/)


## GHCi
- :q to quit
- load functions from myfunctions.hs file
  :l myfunctions
- change the prompt
  :set prompt "ghci> "
- add commands to ~/.ghci to execute them on start of ghci everytime.

## GHC
- compile a file (this creates object files and an executable)
  ghc test.hs
a "main" function must be defined in the file as starting point.
- runhaskell or runghc to run the program in interpreted mode without having to compile its
  runhaskell test.hs

## Operators
&& operator for conjunction (boolean and)
|| operator for disjunction (boolean or)
not operator to negate True or False
== equality
/= inequality

## [functions](./functions.md)
## [types](types.md)
