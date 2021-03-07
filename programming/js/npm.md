# npm
Gets installed with node

https://docs.npmjs.com/getting-started/fixing-npm-permissions

* [npx](npx)

== package management ==
* npm i <package>
installs package in current directory
* npm i --save <package>
* npm install -g <package>
* npm i -g npm@5.6.0
Downgrade (or install specific version) npm
* npm install --save-exact
Saved dependencies will be configured with an exact version

* install == i
* --save-dev
make entry in package.json in devDependencies
* --save
make entry in package.json
* -g == --global
manages packages at global level at /usr/lib/node_modules/npm. It requires root priveleges.
See Arch wiki link for NodeJS to allow installation at user level.

* npm update <package>
* npm update -g <package>
* npm update
update all local packages
* npm update -g
update all global packages

* npm uninstall <package>
* npm uninstall -g <package>

* npm -g list
show tree view of globally installed packages
* npm list -g --depth=0
List globally installed packages
* npm list --depth=0
show only top level packages
* npm outdated
show obsolete packages
* npm bin
gives bin path

== npm configuration ==
* npm config get prefix
Gives install path. Global packages are installed in this path + node_modules
* npm cache clean --force
delete all data out of the cache folder

== project management ==
* npm init
creates package.json
The package.json file will represent your project configuration.
* npm init -y
yes to all questions
* npm start
runs node server.js by default
* npm test
short for npm run test
* npm run <command>
runs an arbitrary command from a package’s "scripts" object
If no "command" is provided, it will list the available scripts


== Change Global Package Path ==
1. change prefix
npm config set prefix ~/npm

2. Set environment variables:
export PATH="$PATH:$HOME/npm/bin"
export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"

* Semantic Versioning
https://bytearcher.com/articles/semver-explained-why-theres-a-caret-in-my-package-json/


= sources =
https://stackoverflow.com/questions/22512992/node-js-package-json-main-parameter
https://bytearcher.com/articles/semver-explained-why-theres-a-caret-in-my-package-json/
https://www.npmjs.com/package/npm-check-updates

