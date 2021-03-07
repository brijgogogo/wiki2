# npx
available from npm 5.2

* npm bin  : gives ./node_modules/.bin/ dir path
  To run installed binary, you can use $(npm bin)/jest
  Or use "scripts" from package.json, but need to pass arguments through "--".

* npx <binary> : executes the binary from ./node_modules/.bin/ directory
  npx jest


* If the binary is not locally installed or in $PATH, it will automatically install a package with the name from the npm registry for you and invoke it. When it's done, the installed package will be removed.
  npx create-react-app

* ensures latest version always without having to upgrade
  npx http-server
  npx cowsay "hello"
  npx workin-hard

* run specific version
  npx uglify-js@3.1.0


https://github.com/junosuarez/awesome-npx


## sources
https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b
https://github.com/npm/npx

