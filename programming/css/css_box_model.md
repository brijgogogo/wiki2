# CSS Box Model
Each element in a document is considered to be a rectangular box. The invisible box consists of:
  - Content
  - Padding : area between content and border. Default 0.
  - Border : runs along the outer edges of the padding area
  - Margin : whitepsace outside borders



* Making good use of whitepace is a key part of any successful layout.



## width & height
- inline-elements
  - Inline elements flow with the text, so width and height are ignored. To make them work use:
    display: inline-block
  - To make the element a true block-level element, add: display: block

- block-level elements:
  - Width of each element box is set to the width of the element's container, which by default is the width of the browser window.
  - Height of each element box is set to a value that's tall enough to contain all the element's content.

Width and height properties are applied to the content area. So actual height = height (of content) + padding + border.
Width and height can be set using: px, em, rem, vw, wh, percentage or auto (default - browser sets automatically)

- width: only configures the width of the element's content.
- max-width:  sets the maximum width of an element's content in the browser viewport.
- min-width: sets the minimum width of an element's content in the browser viewport.
- height: configures height of an element's content in the browser viewport


## box-sizing
Set box-sizing : border-box; to apply height to elements outer rectangle (border)

 - * { box-sizing : boder-box } : sets the rule for all elements.
To return to default sizing for an element use:
box-sizing: content-box

* Tip: Ideal screen reading length: 50 to 80 characters per line, ideal: 65 (go up and down based on font-size)



## padding
Aread between content and the border. Default zero. Background of an element is applied to both the padding and the content areas.

  padding: value; // applies to all four sides
  padding: value1 value2: //value1 to top and bottom, value2 to right and left
  padding: value1 value2 value3; // value1 to top, value2 to right and left, value3 to bottom
  padding: top right bottom left;

## border
Area between padding and margin.  Default zero.
  border: width style color;
  border-style: none, dotted, dashed, solid, double, grove, ridge, inset, outset
  border-color: <color-value>

  border-radius: 15px (rounded corners)

## margin
- Empty space between the element and any adjacent elements.
- Margin is always transparent (background color of page or container element)
- Browsers often have default margins values set for page and certain elements such as <p>, <h>, <form>, etc.

margin: top right bottom left

margin: auto : browser will calculate the margin

* collapsing margin
when one element's bottom margin meets another element's top margin, the browser doesn't add the two values. It determines which of the two margin values is larger, and it uses that value as the vertical margin between the two elements. It throws out the smaller margin value, thus collapsing the two margins into a single value.

Increase the larger of the two margin values or use padding instead.

Left and right margin never collapse. Also, margin collapse doesn't occur for elements that are floated or positioned absolutely.


https://ishadeed.com/article/overflow-css/

