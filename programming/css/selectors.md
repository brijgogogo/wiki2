# Rule
Style sheets are composed of rules that describe the styling to be applied.
Each rule has two parts:
1. a selector: identifiers elements on which to apply sytle rules
2. a declaration: indicates CSS property and its value


selector {
  property: value;
  property: value;
}

## Selector types
1. type selector : like div, targets a specific type of HTML element

2. class selector : uses when multiple page objects require same styling
  <element class="class-name">
  class names are case-sensitive

  .class-name {
   property: value;
  }

Class Name rules: being with letter, can use numbers, underscores and dashes.

  You can apply multiple classes to a single element by separating class names with a space.
3. id selector

`#content { color : red }`
<div id="content">Text</div>

4. Descendant selector: specifies an element within the context of its container

 main p { color: red }

<main>
  <p>Text</p>
</main>




