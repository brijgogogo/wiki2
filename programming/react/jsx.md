# JSX

JSX: tag-based Javascript syntax, allows us to define React elements using a tag-based syntax directly within our JavaScript code
- element’s type is specified with a tag
- tag’s attributes represent the properties
- element’s children can be added between the opening and closing tags

React Element: React.createElement(IngredientsList, {list:[...]});
JSX:           <IngredientsList list={[...]} />

Component properties will take two types:
1. either a string or
2. a JavaScript expression. JavaScript expressions can include arrays, objects, and even functions. In order to include them, you must surround them in curly braces.

- Nested Components
<IngredientsList>
  <Ingredient />
  <Ingredient />
  <Ingredient />
</IngredientsList>

- Css Class
<h1 className="fancy">Baked Salmon</h1>

- Expressions, Evaluation
<h1>{title}</h1>
<input type="checkbox" defaultChecked={false} />
<h1>{"Hello" + title}</h1>
<h1>{title.toLowerCase().replace}</h1>

- Mapping Arrays with JSX
<ul>
  {props.ingredients.map((ingredient, i) => (
    <li key="{i}">{ingredient}</li>
  ))}
</ul>

## JSX must be converted into createElement calls using Babel:


## Using spread operator:

<Ingredient {...ingredient} />

is another way of expressing:

<Ingredient
  amount={ingredient.amount}
  measurement={ingredient.measurement}
  name={ingredient.name}
/>

