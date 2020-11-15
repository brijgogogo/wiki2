# Variables

## var

var topic = "JavaScript";

if (topic) {
  var topic = "React";
  console.log("block", topic); // block React
}

console.log("global", topic); // global React


## const
variable that cannot be overwritten


## let
lexical variable scope

In JavaScript, we create code blocks with curly braces ({}). In functions, these curly braces block off the scope of any variable declared with var. On the other hand, consider if/else statements. If you’re coming from other languages, you might assume that these blocks would also block variable scope. This was not the case until let came along.

- If-else blocks
var topic = "JavaScript";

if (topic) {
  let topic = "React";
  console.log("block", topic); // React
}

console.log("global", topic); // JavaScript

- for loop block
If you use "var" to declare "i" in below example, all alerts will show 5 for i, but "let" fixes it.
const container = document.getElementById("container");
let div;
for (let i = 0; i < 5; i++) {
  div = document.createElement("div");
  div.onclick = function() {
    alert("This is box #: " + i);
  };
  container.appendChild(div);
}

