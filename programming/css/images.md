# images

## Aligning images and text
<img> tag is inline element. By default, the bottom edge of the image aligns with the baseline of the current line. You can control it via vertical-align property:

vertical-align: baseline | bottom | middle | top;
You can specify a length value (in pixels) for finer control. To move the image up, specify a negative value.


## backgroung images
- background-image: url(/images/bg.png);

- background-repeat: repeat | repeat-x | repeat-y | not-repeat | space | round
  By default, browser repeats a image horizontally and vertically until the element is filled (tiling).
  space: repeats without clipping (or cutting off) parts of the image by adjusting empty space around the repeated images.
  round: repeats and scales (adjusts) the dimensions of the image to avoid clipping.

- background-position: x y;
  Can be specified in percentages or pixels or left, top, center, bottom and right
  First value indicates horizontal position (x).
  Seocnd value indicates vertical position (y).
  If only one value is provided, the second value defaults to center.
  By default, tiling starts in the top-left corner of the parent element.
  x: horizontal position pixel or percentage or left, center, right
  vertical: vertical positon in pixel or percentage or top, center, bottom

  backgorund-position: left top; (default)

- Background shorthand property
  background: background-color background-image background-repeat background-attachment background-position

- background-attachment : scroll | fixed
  Configures whether the background image remains fixed in place or scrolls along with the page in the browser viewport.

- multiple background images
  Each image declaratio nis separated by a commona. You can optionally add property values to indicate the image's position and whether the image repeats.

  background: url(img1.jpg) no-repeat left top, url(img2.jpb) no-repeat bottom right;

## Hero image
an eye-catching photo or illustration that takes up the entire width and usually enire height of the browser window when you first land of a page.
Steps for hero image:
1. begin with div: width: 100vw, height: 100vh
    vw : one one-hundredth of the browser window's width
    vh: one one-hundredth of the browser window's height
2. div : background-position: center center;
3. div: background-size: cover (sizes the image so that it covers the entire background of the block element)


## background-clip: context-box | padding-box | border-box
Confines the display of the background image
  - context-box: clips off the image's display to fit the area behind the context
  - padding-box: clips off the image's display to fit the area behind the content and padding
  - border-box: (default) clips off the image's display to fit the area behind the content, padding, and border

## background-origin: content-box | padding-box | border-box
positions the image
- content-box: positions relative to the content area
- padding-box (default): positions relative to the padding area
- border-box: positions relative to the border area

## background-size: width, height | cover | contain
To resize or scale the background image.
  - cover: preserves the aspect ratio of the image as it scales the background image to the smallest size for which both the height and width of the image can completely cover the area.
  - contain: preserves the aspect ratio of the image as it scales th background image to the largest size for which both the height and width of the image will fit within the area.

  e.g.: background-size: 100% 100%
