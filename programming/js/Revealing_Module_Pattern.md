# Revealing Module pattern
all functionality and variables should be hidden unless deliberately exposed
no dependency management
global variables/modules get set in "window" object in browser, ohter third party libraries can overwrite them

two flavors:
* Sigleton
  var my_module = function() {
    var msg = 'Welcome';

    function printMessage() {
      console.log(msg);
    }

    return {
      showMessage: printMessage
    }
  }();

* Constructor function
var MyModule = function() {
    var msg = 'Welcome';

    function printMessage() {
      console.log(msg);
    }

    return {
      showMessage: printMessage
    }
};

var my_module1 = new MyModule();
my_module1.showMessage();



