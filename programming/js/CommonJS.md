# CommonJS 
More often used as part of server side application as part of node.js
Node includes built in support for CommonJS


Each file is a module

// importing module
var obj = require('./file.js');


//exporting module
function print() {

}

exports.printMessage = print; //shorthand for module.exports.printMessage = print;
// module.exports === exports

exports = {  }; // this is not correct
exports = function() {  }; // this is not correct

module.exports = {  };
module.exports = function() {  };


npm install systemjs
<script src="node_modules/systemjs/dist/system.js"></script>
<script>
  System.config({
    meta: {
      format: 'cjs' // use commonjs
    }
  });
  System.import(js/app.js'); // specify root file/module of the application
</script>

