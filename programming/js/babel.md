# babel
* Transpiler
* Supports ES2015
* Supports all popular module formats
* Executed as a build step
* By default uses CommonJS
* pluggable architecture, you need additional packages to perform the transformation that you are interested in. Many transformations are grouped together in bundled presets


npm install babel-cli --save-dev
npm install babel-preset-es2015 --save-dev

$ ./node_modules/.bin/babel js --presets es2015 --out-dir build


# The core functionality of Babel resides at the @babel/core module
npm install --save-dev @babel/core
const babel = require("@babel/core");
babel.transform("code", optionsObject);

# @babel/cli is a tool that allows you to use babel from the terminal.
npm install --save-dev @babel/core @babel/cli
./node_modules/.bin/babel src --out-dir lib
babel --help
babel --plugins
babel --presets

# Plugins & Presets
Transformations come in the form of plugins, which are small JavaScript programs that instruct Babel on how to carry out transformations to the code.
npm install --save-dev @babel/plugin-transform-arrow-functions
./node_modules/.bin/babel src --out-dir lib --plugins=@babel/plugin-transform-arrow-functions

Instead of adding all the plugins we want one by one, we can use a "preset" which is just a pre-determined set of plugins.
npm install --save-dev @babel/preset-env
./node_modules/.bin/babel src --out-dir lib --presets=@babel/env
@babel/env preset includes all plugins to support modern JavaScript (ES2015, ES2016, etc.).


# Configuration
babel.config.js

## sources
babeljs.io
https://babeljs.io/docs/en/usage
https://babeljs.io/docs/en/configuration

