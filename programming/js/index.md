# javascript
- Released in 1995
- European Computer Manufacturers Association (ECMA) in in charge of changes.
- ES5 in 2009
- ES2015 onwards yearly releases.
- ESNext : Anything that’s part of the stage proposals
  - Stage 0: newest proposals
  - Stage 1
  - Stage 2
  - Stage 3
  - Stage 4: finished proposals

Browser Compatibility with JS: http://kangax.github.io/compat-table/esnext/

- [variables](variables.md)
- [strings](strings.md)
- [functions](functions.md)
- [objects](objects.md)
- [arrays](arrays.md)
- [classes](classes.md)
- [modules](modules.md)
- [functional_programming](functional_programming.md)
- [decorator](decorator)
- [singleton](singleton)
- [prototype](prototype)
- [polyfills](polyfills)

* [async_js](async_js) promises, observables, fetch

* obj?.propName : safe navigation operator

## package managers
* [yarn](yarn)
* [npm](npm)  (npx)

## useful packages
- npm-check
- ncu (npm check updates)
- yo


## JS at Server side
* [nodejs](nodejs/index.md)
* [expressjs](expressjs/index.md)

## libs
- lodash
- ramda
- underscore
- graphql
- [rxjs](rxjs/index.md)

## Frontend frameworks
- [angular](angular/index.md)
- [react](react/index.md)
- vue
- [d3](d3/index.md)
- mithril
- jQuery
- [web_assembly](web_assembly/index.md)
- preact
- [svelte](svelte/index.md)

## JS Flavors/Variations / transpilers
- [ecmascript](ecmascript/index.md) (ES2015, etc)
- [typescript](typescript/index.md)
- [babel](babel)
- flow

# formatting utilities
- Prettier

## package.json
- project metadata (name, authors, license)
- describes projects
- lists dependencies

## package-lock.json
- records the exact versions that were installed
- Package.json can be loose in its specification of dependency version (^, ~)
- recommended to check this file into source control
- helpful if you need to re-create the exact dependency versions in your project

## package version
Version numbers in npm are parsed by a component called semver.
major.minor.patch
version modifiers: ~, ^
package >= 1.2.7 : install any pckage greater than 1.2.7
package ~1.2.3 : install patch level changes (1.2.3, 1.2.4, but not 1.3.x nor 2.x)
package ^1.2.3 : insdtall minor updates (1.2.3, 1.2.4, 1.5.6, but not 2.x)
@ indicates version tag
package@2.0.0 : exact package version
package@latest : latest stable version
package@next : latest beta version
https://blog.fullstacktraining.com/what-is-semantic-versioning/

## minifiers, obfuscators
* UglifyJS
* JSMin
* Closure Compiler

## testing libraries
* unit tests
  - [Jest](Jest)
  - Jasmine
  - Mocha
  - Ava
  - Tape
* Integration tests
  - [Puppeteer](Puppeteer)

## Continuous Integration (CI)
- Travis CI
- Circle CI

## desktop frameworks
* electron
* react native

## build & packaging tools
* webpack
* grunt
* browserify
* gulp
* parcel

## linting utilities
Linter - checks syntax, finds problems, could also enforce code styles
* JSLint - original JavaScript linter by Douglas Crockfords
* JSHint - in 2011, by Anton Kovalyov
* [ESLint](ESLint) - by Nicholas Zakas (most popular)


## templating libraries
* jade
* pug
* mustache
* handlebars

## todo
- Command and Query Responsibility Segregation
- https://www.prisma.io/
https://github.com/AlexanderEllis/js-reading-list
https://stateofjs.com/
https://2018.stateofjs.com/
https://npm-stat.com/
https://ashleynolan.co.uk/blog/frontend-tooling-survey-2018-results
https://blog.logrocket.com/discussing-the-over-engineering-trap-in-typescript/


- [js_app_questions](js_app_questions)
