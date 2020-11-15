# Asynchronous Module Definition (AMD)
Targets browsers
Supports loading modules asynchronously

define(['./player'], function(player){
  console.log('name: ' + player.getName())

  function show() {
    console.log("hello amd")
  }

  return {
    showInfo: show
  }
});


define function will be defined in loader.
paramter1: array of dependencies
these parameters will be passed to the second parameter which is a function.

