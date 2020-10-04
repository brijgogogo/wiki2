# scrot
- scrot [filename]
- scrot
- scrot -u [filename]
take screenshot of currently focused window
- scrot -s [filename]
allows to open/select a window or draw a rectangle
- scrot -s -d [num]
-d [num] tells to delay by specified seconds
- -b : grab windows border
- -t : creates a thumbnail
- scrot --thumb [num]
generate thumbnail, [num] is the percentage of the original size
- -c creates a countdown in your terminal when you use -d option
- scrot -v
- scrot -q [num]
adjust quality of image, defautl is 75 (range 1-100)
- scrot -m
grab and join screenshot of multiple displays
- scrot abc.png -e 'feh abc.png'
execute a command on saved image

The -e (or --exec) and filename parameters can take format specifiers. There are two types of format specifiers. First type is characters preceded by '%' that are used for date and time formats, while the second type is internal to scrot and are prefixed by '$'.
- scrot -e 'feh $n'
$n provides screenshot name
- scrot img.png -e 'mv $f ~/Pictures/'
$f - screenshot path
- scrot %yy-%mm-%dd-%hhmss_$wx$h_scrot.png
- scrot image.png -e 'echo $s'
$s gives size of screenshot
$p : pixel size
$w : image width
$h : image height
$t : image format
$$ : $
\n : nwe line


## source
https://www.howtoforge.com/tutorial/how-to-take-screenshots-in-linux-with-scrot/
https://github.com/dreamer/scrot

