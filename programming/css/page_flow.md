# Page Flow
Browser lays out elements in the order in which they appear in the HTML file.
- block-level elements are stacked vertically
- each inline element is rendered from left to right within its parent block element.

* Floating
Browser takes the element out of the usual flow and places it to the left, right and high (depending on value). Rest of the page content flows around the floated element.

float: left|right|none;

When you apply float property to an inline element, browser takes the element out of the normal flow, turns it into a block-level element, and then floats it.

* Clearing
Clearing a floated element means that the browser renders the element after the end of the floated element.
clear: left | right | both | none;

collapsing problem: if all elements of a block-level element are floated, it collapses.

* clearfix hack
.self-clear::after {
  content: ""; // inset an empty string
  display: block; // make it a block
  clear: both; // clear both left and right
}


