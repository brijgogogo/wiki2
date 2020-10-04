# simple terminal (st)
Very mininal
- supports unicode
No scrollback buffer
true color support


suckless softwares: very minimal by default. You can add features to it.

To add features to st, you can install patches.

## install manually
1. wget https://dl.suckless.org/st/st-0.8.2.tar.gz
2. tar -xvf <file>
3. make
4. sudo make install

## apply patches manually
1. make clean (or remove config.h)
2. git apply patches/some_path.diff
3. make
4. sudo make install

https://wiki.archlinux.org/index.php/St


## clipboard patch
copy on selection
pase on middle mouse button click (touchpad: click both button together)


## scrollback path
st.suckless.org/patches/scrollback/
keyboard scroll: Shift+PgUp/PgDn
Shift+mouse-wheel/touchpad scroll

## font size
increase pixelsize in config.h, then "make install"


## copy url patch
st.suckless.org/patches/copyurl/
Alt+l : copies last url (and next cycles through others)

## newterm patch
st.suckless.org/patches/newterm/
Ctrl+Shift+Enter opens terminal in same location

## open copied patch
Alt + o : opens copied via xdg-open

