# Type Definitions
When you use external libraries like jQuery or moment.js, there are no information of the types in that code. So in order to use it with TypeScript, you also have to get files that describe the types of that code. These are the type declaration files, most often with the file extension name .d.ts.


These definitions can be found at TypeSearch.


https://microsoft.github.io/TypeSearch/


https://blogs.msdn.microsoft.com/typescript/2016/06/15/the-future-of-declaration-files/


For example if we want to install lodash we can run the following command to get the typings for it:
npm install --save-dev @types/lodash

old
https://github.com/DefinitelyTyped/DefinitelyTyped


## intellisense
To get IntelliSense for Node.js, you need to install type information for it with this command:

npm install @types/node --save-dev
