# Arch GUI set up
- sudo pacman -S xorg xorg-xinit
- clone dwm and dmenu then install both via (sudo make clean install)

cp /etc/X11/xinit/xinitrc ~/.xinitrc
replace "twm &" with "exec dwm"

$ startx
