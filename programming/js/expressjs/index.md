# express
Framework for building web apps
- minimalistic
- fast
- unopinionated

Creator: TJ Holowaychuck
Express extends Node HTTP objects.



## Scaffolding
express-generator generates scaffolding to start your Express project

## application instance
const express = require('express')
const app = express() // express function returns application instance


## METHOD
app.METHOD(path, handler)
app.get

path: supports wild cards like: '/about*'

## Middlewares
Functions added to the stack. These Functions are executed sequentially that access request and response.
The order in which routes and middlewares are added is significant. First one takes priority.

app.use(function(request, response, next) {
  // next(): moves processing to next middleware
  // response.send('done!'); // response is sent back, no further middlewares are called further
}

- Static middleware
Serves resources in the specified dir at root.
app.use(express.static('public'));

- custom request processing time middleware
module.exports = function(request, response, next) {
  var start = +new Date();
  var stream = process.stdout;
  var url = request.url;
  var method = request.method;

  // response object is an EventEmitter which we can use to listen to events
  response.on('finish', function() {
    var duration = +new Date() - start;
    var message = method + ' to ' + url + '\ntook \ + duration + ' ms \n\n';
    stream.write(message);
  });

  next();
}



## View Engines
A view is what gets delivered to the user. It could be html, png or pdf, etc.

Exmaples of view engines:
- Pug (formerly named Jade): abstracts away html, converts texts to HTML
- Handlebars (based on templating language Mustache): you write HTML with special tags, that allow Handlebars to inject content.


## common methods
response.redirect('/newPath'); // 302 status code
response.redirect(301, '/newPath); // 301 status code (moved permanently)
response.sendFile(__dirname + '/public/index.html');
response.status(404).json('No description found for ' + request.params.name);



request.query.limit >= 0  // GET /path?limit=1


## Dynamic routes
Placeholders can be used to name arguments part of the URL path
(named arguments)

app.get('/blocks/:name', function(request, response) {
  // the :name in url creates a "name" property on the request.params object (request.params.name)
});


// app.param function maps placeholders to callback functions. It is useful for running pre-conditions on dynamic routes
app.param('name', function(request, response, next) {
  var name = request.params.name;
  var block = name[0].toUpperCase() + name.slice(1).toLowerCase();
  request.blockName = block;
  next();
}

## Body parsing
$ npm install body-parser
var bodyParser = require('body-parser');
var parseUrlencoded = bodyparser.urlencoded({ extended: false });

var blocks = { 'name1' : 'descriptions1' }

// POST request
// routes can take multiple handlers, which are executed sequentially
app.post('/blocks', parseUrlencoded, function(request, response) {
  var newBlock = request.body; // request.body contains form data
  blocks[newBlock.name] = newBlock.description; // form data can be accessed by property names
  response.status(201).json(newBlock.name);
});


app.delete('/blocks/:name', function(request, response) {
  delete blocks[request.blockName];
  response.sendStatus(200);
}


## Route instances
Avoids duplicity in paths
var blocksRoute = app.route('/blocks'); // returns route object which handles all requests to the /blocks path
blocksRoute.get(function(request, response) {...});
blocksRoute.post(parseUrlencoded, function(request, response) {...});

// chaining funcitons
app.route('/blocks')
  .get(function(request, response)  { .. })
  .post(parseUrlencoded, function(request, response) { ... })

app.route('/blocks/:name')
  .get(function(request, response) { ... })
  .delete(funciton(request, response) { ... })

## Route files: for clean code, extract routes to modules
var blocks = require('./routes/blocks');
app.use('/blocks', blocks);


// blocks.js
var express = require('express')
var router = express.Router();
var bodyParser = require('body-parser');
var parseUrlencoded = bodyparser.urlencoded({ extended: false });

var blocks = { .. }

router.route('/') // the route path relative to the path where its mounted: (app.use('/blocks', blocks)
  .get(function(request, response) { ... })
  .post(....)

router.route('/:name')
  .all(function(request, response, next) {  // this replaces app.param method (pre-conditions)
    var name = request.params.name;
    var block = name[0].toUpperCase() + name.slice(1).toLowerCase();
    request.blockName = block;
    next();
  })
  .delete(....)
  .get(....)

module.exports = router;

= useful modoules with express =
https://github.com/expressjs (repositories)
- morgan (logging)
- body-parser (body parsing middleware)
- multer (multipart/form-data)
- session (session middleware)
- server-index (directory listings)
- express-paginate
- cookie-parser
- serve-favicon
- compression
- cors
- timeout
- vhost (subdomains)


## sources
https://expressjs.com/


