# webpack
Webpack is a module bundler. A module bundler takes all of our different files (JavaScript, LESS, CSS, JSX, ESNext, and so on) and turns them into a single file.

## Benefits of bundline
- modularity: you can write code into parts/modules which is easier to work with, especially in teams.
- network performance.: need to load only one dependency in browser (avoids making HTTP request for each file separately)

## Code splitting / rollups / layers
Splits up your code into different chunks that can be loaded when you need them.

## Minification
Removes whitespace, line breaks, lengthy variable names, and unnecessary code to reduce the file size.

## Feature Flagging
Sends code to one or more—but not all—environments when testing out features.

## Hot Module Replacement (HMR)
Watches for changes in source code. Changes only the updated modules immediately.



* bundles AMD, CommonJS, ES2015
* you can preprocess (before bundling) your files by using loaders


## Dependency Graph
Webpack will follow import tree and include all of these necessary modules in our bundle. Traversal through all these files creates what’s called a dependency graph. A dependency is just something our app needs, like a component file, a library file like React, or an image.



## Source Map
A source map is a file that maps a bundle to the original source files.
Two output files are generated and added to the dist folder: the original bundle.js and bundle.js.map.
The source map is going to let you debug using your original source files. In the Sources tab of your browser’s developer tools, you should find a folder named webpack://. You can debug your code from the files present in it.



npm install webpack --save-dev
./node_modules/.bin/webpack js/app.js build/bundle.js
<script src="/build/bundle.js" type="text/javascript"></script>


// support babel transpilation
npm install babel-loader babel-core

## configuration file
webpack.config.js


## sources
https://webpack.js.org/
webpack.github.io

