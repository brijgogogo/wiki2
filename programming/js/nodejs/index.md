# NodeJS
Javascript on server side

# Single threaded

# Event-Driven Programming
- Client Side / UI : button clicks, user actions
- Server Side : incoming request

Install via NVM
* [nvm](nvm)

= directory references =
__dirname : resolves to the directory the executing script resides
process.cwd() refers to the directory on which the node command was called
http://www.hacksparrow.com/understanding-directory-references-in-node-js.html

= fs =
fs.readFile is an asynchronous method for reading files.

const fs = require('fs);
fs.readFile(__dirname, "/file.ext, (err, data) => {
	if(err) { }

	console.log(data)

})


## global module
if you run a JavaScript file directly with node, "require.main" will equal the "global module".


## Examples
* [simple_node_http_server_example](simple_node_http_server_example)
* [http_node_routing_example](http_node_routing_example)

server.listen(port, () => console.log(`server started on port ${port}; press Ctrl-C to terminate ....`))


## Static Resources
- For larget projects use a proxy server such as NGINX or a CDN to serve static resources
In web servers like Apache or IIS, if a user asks an html file, the file it delivered to the user automatically. Node doesn't work like that. We need to read the file and send its contents along to the browser.


= Node Modules =
Node modules: offer a mechanism for modularization and encapsulation
npm packages: provide standardized scheme for storing, versioning and referencing projects

"require" is a Node function for importing a module.

	const express = require('express')

By default, Node looks for modules in the directory node_modules

Built-in Node modules: fs, http, os, path, etc.

If you want something to be visible outside of the module, you have to add it to "exports".

	exports.getName = () => { return "Name" }

== Best Practices ==
https://github.com/goldbergyoni/nodebestpractices
https://medium.com/@nodepractices/were-under-attack-23-node-js-security-best-practices-e33c146cb87d

* layer your components
* wrap common utilities
* config
  - keys can be read from file and environment variable
  - secrets are kept outside committed code
  - hierarchical

= sources =
https://wiki.archlinux.org/index.php/Node.js_

