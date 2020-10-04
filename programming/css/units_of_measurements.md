# units of measurements
 - pixel (px) : absolute measurement, 1/96 of an inch
 - point (pt) : absolute measurement, 1/2 of an inch
 - em : relative measurement equal to the element's default, inherited, or defined font size
 - % : configures a percentage value of the parent element.
 - root em (rem) : relative measurement equal to the font size of the root element of the web page
 - viewport width (vw) : relative measurement equal to 1/100 (or 1%) of the current width of the browser window (viewport width). (50vw = 50% of viewport width)
 - viewport height (vh): relative measurement equal to 1/100 of the current height of the browser window (viewport height)



Em unit is a relative font unit. An em unit is the width of a square block of type (typically the uppercase M) for a particular font and type size.
On web pages, an em unit corresponds to the width of the font and size used in the parent element (typically the body element).

Percentage values work in a manner similar to em units. For example, font-size: 100%; and font-size:1em; should render the same in a browser.

Root element is html element. Automatically assigned browser's default size (usually 16px) or the type size set by the user in the browser's preferences.

Modern designs use rem to scale well on different size of devices and honoring user preferences.



