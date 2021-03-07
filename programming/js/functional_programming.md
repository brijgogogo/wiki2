# functional programming in JS

## Immutability

- Mutable
function rateColor(color, rating) {
  color.rating = rating;
  return color;
}

- Immutable using Object.assign
const rateColor = function(color, rating) {
  return Object.assign({}, color, { rating: rating });
};
// It takes a blank object, copies the color to that object, and overwrites the rating on the copy.

- Immutable using spread operator
const rateColor = (color, rating) => ({
  ...color,
  rating
});


- Mutable
const addColor = function(title, colors) {
  colors.push({ title: title });
  return colors;
};

- Immutable
const addColor = (title, array) => array.concat({ title });
// takes a new object with a new color title and adds it to a copy of the original array

- Immutable using spread operator
const addColor = (title, list) => [...list, { title }];



## Pure Function
do not cause side effects


## Higher Order function
Higher-order functions are functions that can manipulate other functions. They can take functions in as arguments or return functions or both.

- Currying
Involves use of higher-order function


## Recursion
functions that recall themselves


## Composition
- chaining: functions can be chained together using dot notation to act on the return value of the previous function


- Compose
Piping is another technique where you pass result of one function to another function, but it is difficult to maintain and scale. More Elegant approach is to compose functions into larger functions:

The compose function is a higher-order function. It takes functions as arguments and returns a single value:

const compose = (...fns) => arg =>
  fns.reduce((composed, f) => f(composed), arg);


const both = compose(
  civilianHours,
  appendAMPM
);

both(new Date());

