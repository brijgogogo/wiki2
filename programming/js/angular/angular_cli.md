# Angular CLI

* npm install -g @angular/cli
* ng --version
* yay watchman
watchman is used by angular cli to monitor changes in files

* ng --help
* ng help [options]
* ng help serve

* ng new <project_name>
creates a new workspace and an initial Angular app
- ng new todo --routing false --style css --skip-git --skip-tests

* ng serve
launches server, watches files, rebuilds on changes
--open=true|false : opens url in browser
--prod=true|false : uses production config for build
--progress=true |false : log build progress to console
--watch=true|false : rebuild on change
--host=host : host to listen on (default: localhost)
--port : port to listen on (default: 4200)

* ng generate <schematic> [options]
schematic: component, class, enum, module, pipe, service, directive, interface, serviceWorker, application, etc.
* ng generate component <component-name>
* ng g c subfolder/component-name --flat
--flat: doesn't generate folder for component

* ng build
compiles angular app into output directory dist/
uses webpack
--prod=true|false : sets the build configuration to production

* ng lint
runs linting tool (default: TSLint)

* ng test
runs unit tests in a project

* ng doc <keyword>
search angular documentation in browser

* ng add <packageName>
adds support for an external libray to your project

* ng e2e
builds and servers app, then runs end to end tests using Protractor

* ng update
updates app and its dependencies

`angular.json`: workspace configuration file, you can set per-project defaults for CLI command options, and specify configurations to use when the CLI builds a project for different targets.

`ng config`: set and retrieve configuration values from the command line, or you can edit the angular.json file directly
ng config <jsonPath> <value> [options]

== sources ==
https://cli.angular.io
https://angular.io/cli
https://angularconsole.com  : GUI for angular-cli

