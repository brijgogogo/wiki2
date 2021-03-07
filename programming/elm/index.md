# Elm
- Statically typed
- Functional programming language
- for building safe front-end web applications
- compiles down to minimal JavaScript

- No runtime exceptions- Elm's compiler catches problems early
- No null or undefined errors - Elm has types for representing null. Compiler ensures you handle possible nulls.
- Built-in framework: Elm Architecture
- Immutable types

== Elm Compiler ==
- Elm compiler is built in Haskell.
npm install -g elm

Tools with Elm compiler:
- elm-repl: interactive shell to try out Elm
- elm init: to bootstrap a new Elm project
- elm reactor: run a development server to build Elm applications
- elm make: compile Elm files
- elm install - install Elm packages
- elm publish - publish your own Elm package
- elm bump - change your package's version based on local changes
- elm diff - see changes between two versions of a published package

== elm-format package ==
To automatically format your code to community conventions
npm install -g elm-format

== elm repl ==
$ elm repl
(as a convenience you can change the value of a constant inside the REPL)

- String in double quotes.
"hello"
- use ++ to concatenate strings
- v = 10
creating a variable
You can't change value of a variable later in an Elm file. Elm variables are actually constants.

* [Functions](Functions)


= if expression =
Elm lacks "if" statements for conditional branching, but makes up for it with "if expressions"
- if <boolean value> then <value when true> else <value when false>

funcName val = if val then "truthy" else "falsy"
- since "if" is an expression, you can set a function equal to it
- we need else branch always
- the return value type should be same in both branches


== sources ==
https://guide.elm-lang.org/install.html
http://elm-lang.org/docs/style-guide
https://github.com/sporto/awesome-elm
https://github.com/avh4/elm-format






