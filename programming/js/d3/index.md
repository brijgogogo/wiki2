# d3.js
D3: Data Driven Documents
Javascript Library: has core library and many sattellite libraries

https://d3js.org/
D3 generates SVG.
Default svg height and width: 350x150
SVG is a vector format

We can draw graphics primitives with SVG: text, circles, rectangles
We can perform transformations on SVG elements. Transforms are preformed froma transform origin.


* draw text
    d3.select("body")
      .append("svg")
      .append("text")
      .text("hello world!")
      .attr("x", 100)
      .attr("y", 100)
      ;

* draw circle
    var svg = d3.select("body")
      .append("svg")

      svg
      .append("circle")
      .attr("fill", "red")
      .attr("r", 20)
      .attr("cx", 100)
      .attr("cy", 100)
      ;

* draw rectangle
      svg
      .append("rect")
      .attr("fill", "red")
      .attr("width", 5)
      .attr("height", 10)
      .attr("x", 100)
      .attr("y", 100)
      ;


* transformations: translate/slide, rotate, scale/zoom, skey (x or y), matrix (combinations)
  <script type='text/javascript'>
    var currentX = 455;
    var currentY = 455;

    var svg = d3.select("body")
      .append("svg")
      .attr("transform", "scale(8)")

    drawCircle(2);
    drawCircle(8);
    drawCircle(1);
    drawCircle(2);

    function drawCircle(radius) {
      svg
      .append("circle")
      .attr("fill", "red")
      .attr("r", radius)
      .attr("cx", currentX)
      .attr("cy", currentY)
      ;

      currentX += 25;
    }
  </script>






