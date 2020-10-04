# React

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


- [components](./components.md)
- [jsx](./jsx.md)
- [fragments](./fragments.md)
- [hooks](./hooks.md)
- [ref](./ref.md)
- [context](./context.md)

## Render Props
- Properties that are rendered.

<List data={tahoe_peaks}
  renderEmpty={<p>This list is empty</p>}
  renderItem={item => ( <> {item.name} - {item.elevation.toLocaleString()}ft </>)}
  />

## Packages
- react-window
- react-virtualized
- react-markdown
- graphql-request




## resources
https://github.com/brillout/awesome-react-components


## sources
https://reactjs.org/blog
https://www.robinwieruch.de/react-eslint-webpack-babel/
http://typescript-react-primer.loyc.net/tutorial-5.html
