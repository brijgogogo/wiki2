# functions

## Function Declaration
function funName() {
  // body
}

## Function Expressions
Creating the function as a variable
const funName = function() {
  // body
}

Function declarations are hoisted (moved up) and function expressions are not. In other words, you can invoke a function before you write a function declaration. You cannot invoke a function created by a function expression.


## Default parameters
function fun(name = "Brij") {
}

## Arrow functions
Create function without using the function keyword.

const fun = name => `Hi ${name}`;

