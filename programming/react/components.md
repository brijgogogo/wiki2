# Components
A user interface is made up of parts. In React, we describe each of these parts as a component.
- components render trees of elements and other components

function IngredientsList({ items }) {
  return React.createElement(
    "ul",
    { className: "ingredients" },
    items.map((ingredient, i) =>
      React.createElement("li", { key: i }, ingredient)
    )
  );
}

- older syntax using fucitons
React.createClass({ render() { })

- older syntax using class
class ComponentName extends React.Component {
  render() {
  }
}



