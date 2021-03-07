# Typescript
- Gradually typed language (works best when its knows types, but it doesn't have to know every type to compile)
- TS typechecks your code at compile time.
- supports ES7, JSX, etc
- outputs to ES5, ES6, etc.
- TypeScript is case sensitive.

## TS vs JS
1. Types are bound dynamically in JS and statically in TS.
2. Type are automatically converted in JS, and mostly not in TS.
3. Types are checked at runtime in JS and at compile time in TS.
4. Most Errors are surfaced at runtime in JS and at compile time in JS.

## TS to JS
TSC: TypeScript source -> TypeScript AST -> AST is checked by typechecker -> TypeScript AST -> Javascript source
JavaScript runtime: Javascritp AST -> AST -> bytecode -> Bytecode is evaluated by runtime.

AST - Abstract Syntact Tree

## Type system
Modern languages have all sorts of different type systems.
Type system is a set of rules that a typechecker uses to assign types to your program.
There are generally two kinds of type systems:
1. type systems in which you have to tell the compiler what type everything is with explicit syntax, and
2. type systems that infer the types of things for you automatically. Both approaches have trade-
offs.

TypeScript is inspired by both kinds of type systems: you can explicitly annotate your types, or you can let TypeScript infer most of them for you.  To explicitly signal to TypeScript what your types are, use annotations.

- Annotations
value: type
let a: number
let b: boolean[] = [true, false]

- to let TS infer types:
let a = 1
let b = [true, false]


## [setup](setup.md) (tsc, tslint, tsconfig.json)



## decorator
Provides metadata about a class

- [type_annotations](type_annotations.md)
- [access_modifiers](access_modifiers.md)
- [tuples](tuples.md), Indexable types.
- [interfaces](interfaces)
- [accessors](accessors)
- [type_definitions](type_definitions)


## npm scripts
"scripts": {
  "test": "echo \"Error: no tests installed\" && exit 1",
  "build": "tsc",
  "start": "node server.js"
},
The build script simply runs tsc which compiles your code according to the options in tsconfig.json. To invoke this script you write npm run build on the command line.

“But wait!” you may be thinking. “It’s really much easier to type tsc than npm run build!” That’s true, but there are two reasons to define a build script:
* If you installed TypeScript with --save-dev but not --global, you can’t run tsc directly from the command line because it’s not in the PATH.
* There’s a good chance your build process will become more complicated later. By creating a build script you can easily add other commands to the build process later.

Note: npm runs the prestart script automatically whenever someone runs the start script, so you could add this additional an additional script:

"prestart": "npm run build",
This would build your project whenever you start your server with npm start or npm run start.


# setup a Typescript compiler configuration file tsconfig.json
./node_modules/.bin/tsc --init

var Id: number = 1;
var cost: number = 2.33;
var yes: boolean = true;
var arr: string[] = ["one", "two"];
var arr2: Array<number> = ["a", "b"];
var noVal = null;
Var anyType: any = "string";

--------------------------------------------------
function emptyFunc(p1: string, defaultArg = "val", optionalArg?: number): void {

}

--------------------------------------------------
Enum People {Brij, Vicky}
var x = People.Brij;
var y = People[0];

--------------------------------------------------
interface Person {
  hairColor: string;
  age: number;
  alive?: boolean;
  feed();
}
--------------------------------------------------
interface AddNums {
  (num1: number, num2: number)
}

var newNum: AddNums;

newNum = function(num1: number, num2: number) {

}

var z = newNum(4, 5);
--------------------------------------------------

interface Stringy {
  [index: number]: string;
}

var coolArray: Stringy;
coolArray = ["apple", "orange"];

--------------------------------------------------

class Person {
  name: string;
  age: number;
  hungry: boolean = true;

          constructor(name: string, age?: number) {
            this.name = name;
            this.age = age;
          }

          feed() {
            this.hungry = false;
            return "yummy!";
          }
}

var Brendan = new Person("Brendan", 21);
Brendan.feed();

--------------------------------------------------

class SecretAgent extends Person {

}
--------------------------------------------------

module Person {
  export interface PersonInterface {
    name: string;
  }
}


/// <reference path="Person.ts" />
module Person {
  export class Person implements PersonInterface {
    name: string;
  }
}



## Sources
Pro Angular
Programming TypeScript O'Reilly
https://medium.freecodecamp.org/how-to-set-up-a-typescript-project-67b427114884
http://www.typescriptlang.org/play/
https://www.typescriptlang.org/docs/handbook/tsconfig-json.html
https://www.typescriptlang.org/docs/handbook/compiler-options.html
