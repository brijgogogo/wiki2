# Opacity
configures transparency of an element
Value ranges from 0 to 1
  0: completely transparent
  1: compeltely opaque

It applies to both the text and the background.

e.g. opacity: 0.6;


## CSS RGBA color
Red, green, blue alpha (transparency): uses decimal color values
The alpha value must be from 0 to 1.

e.g. color: rgba(255, 255, 255, 0.8);


## CSS HSLA color
Color notation based on color wheel model: hue, saturation, lightness, alpha
  - Hue: actual color, value from 0 to 360.
        Red is represented by 0 and 360 both.
        Green: 120
        Blue; 240
        Set hue to 0 when configuring black, gray and white
  - Saturation: configures intensity of the color.
              Full color saturation: 100%
              Gray: 0%
  - Lightness: brightness or darkness of the colors.
              normal color: 50%
              white: 100%
              black: 0%
  - Alpa: 0 (transparent) to 1 (opaque)

To omit alpa value use "hsl" instead of "hsla".

e.g.:
Red: hsla(360, 100%, 50%, 1.0);
Green: hsla(120, 100%, 50%, 1.0);
Blue: hsla(240, 100%, 50%, 1.0);
Black: hsla(0, 0%, 0%, 1.0);
Gray: hsla(0, 0%, 50%, 1.0);
White: hsla(0, 0%, 100%, 1.0);

HSLA is more intuitive to work with than hardware-oriented RGB
  Dark Cyan Blue: hsla(210, 100%, 25%, 1.0);
  Cyan Blue: hsla(210, 100%, 50%, 1.0);
  Light Cyan Blue: hsla(210, 75%, 25%, 1.0);



