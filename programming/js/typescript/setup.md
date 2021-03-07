## typescript setup

## TSC: TypeScript Compiler (nodejs)
- npm i --save-dev typescript
TypeScript comes with two binaries: tsc and tsserver

## tsconfig.json
Every TypeScript project should include tsconfig.json in its root directory.
It tells things like which files to compile, output directory, JS version to emit, etc.
Used by tsc.

- npx tsc --init
generates tsconfig.js for compiler options

- npx tsc
compiles

- npx tsc -w
watches for changes


## TSLint - linter for TS
checks for inconsistencies in coding style, syntax errors, omissions
- npm i tslint --save-dev

## tslint.json
tslint.json confgures tslint.

- npx tslint --init
adds tslint.json
(also install tslint extension for your code editor so that you can see linting errors right away when coding)


## Type Declarations for NodeJS
- npm install --save-dev @types/node



## tools
https://github.com/google/gts
tslint-config-airbnb
ts-node
typescript-node-starter


## sources
https://webpack.js.org/guides/typescript/
https://alligator.io/typescript/new-project/



