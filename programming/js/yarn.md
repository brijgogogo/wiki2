# Yarn
Javascript package manager built by Facebook, Google, Exponent and Tilde.

Yarn does not replace npm completely. It is only a new CLI client that fetches
modules from the npm registry.

* `yarn.lock` file
In `package.json`, the file where both npm and Yarn keep track of the
project's dependencies, version numbers aren't always exact. Instead, you can
define a range of versions. This way you can choose a specific major and minor
version of a package, but allow npm to install the latest patch that might fix
some bugs.

In an ideal world of semantic versioning, patched releases won’t include any
breaking changes. This, unfortunately, is not always true. The strategy
employed by npm may result into two machines with the same package.json file,
having different versions of a package installed, possibly introducing bugs.

To avoid package version mis-matches, an exact installed version is pinned
down in a lock file. Every time a module is added, Yarn creates (or updates) a
yarn.lock file. This way you can guarantee another machine installs the exact
same package, while still having a range of allowed versions defined in
package.json.

In npm, the `npm shrinkwrap` command generates a lock file as well, and npm
install reads that file before reading package.json, much like how Yarn reads
yarn.lock first. The important difference here is that Yarn always creates and
updates yarn.lock, while npm doesn’t create one by default and only updates
npm-shrinkwrap.json when it exists.

* Parallel Installation
Whenever npm or Yarn needs to install a package, it carries out a series of
tasks. In npm, these tasks are executed per package and sequentially, meaning
it will wait for a package to be fully installed before moving on to the next.
Yarn executes these tasks in parallel, increasing performance.


* commands
npm install -g <package>            |  yarn global add <package>
npm install --global <package>      |  yarn global add <package>
npm install <package>               |  yarn add <package>
npm install <package> --save        |  yarn add <package>
npm install <package> --save-dev    |  yarn add <package> --dev
npm install                         |  yarn install
npm update --global                 |  yarn global upgrade
npm uninstall <package>             |  yarn remove <package>
npm cache clean                     |  yarn cache clean <package>
rm -rf node_modules && npm install  |  yarn upgrade
                                    |  yarn why
                                    |  yarn bin


