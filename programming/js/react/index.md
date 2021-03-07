# react
Created by Jordan Walke (Facebook), 2011
React is a library that’s designed to update the browser DOM for us.

- React is Declarative (using JSX, it abstracts away the details of how the DOM is to be rendered)


## React
- React is the library for creating views.
- The browser DOM is made up of DOM elements.
- React DOM is made up of React elements.  - A React element is a description of what the actual DOM element should look like.
const h1 = React.createElement("h1", { id: "recipe-0" }, "Baked Salmon");

const ul = React.createElement(
  "ul",
  { className: "ingredients" },
  items.map((ingredient, i) =>
    React.createElement("li", { key: i }, ingredient)
  )
);

## ReactDOM
- ReactDOM is the library used to actually render the UI in the browser.

ReactDOM.render(h1, document.getElementById("root"));


## [React_components](React_components)
## [jsx](jsx)
## [React_Fragments](React_Fragments)
## [React_hooks](React_hooks)
## [ref](ref)
## [React_context](React_context)

## resources
https://github.com/brillout/awesome-react-components


## sources
https://reactjs.org/blog
https://www.robinwieruch.de/react-eslint-webpack-babel/
http://typescript-react-primer.loyc.net/tutorial-5.html

