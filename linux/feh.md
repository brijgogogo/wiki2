# feh
image viewer and desktop wallpaer manager

## Shortcuts
(search for keys in man)
- Left Arrow / Backspace : Previous image
- Right Arrow / Space : Next Image
- Up Arrow : Zoom-in
- Down Arrow : Zoom-out
- Home : first image
- End : last image
- Right click : menu
- Esc : exit
- / : Fit window


## config
~/.config/feh/keys


## usage

- show clickable thumbnails
feh -t .


## viewing images
- feh -g 640x480 -d -S /path/to/images
-g : forces the images to appear no larger than 640x480
-d flag draws the file name
-S filename : sorts images by file name
--start-at /path/to/first/image.extt

## setting desktop background
- feh --bg-scale /path/to/image.file
--bg-title
--bg-center
--bg-max
--bg-fill
To restore background image on next session, add below to ~/.xinitrc
~/.fehbg &
- feh --bg-center /path/to/file/for/first/monitor path/to/second/monitor

- feh --randomize --bg-fill ~/.wallpapers/*
sets random wallpaper

## sources
https://wiki.archlinux.org/index.php/Feh


