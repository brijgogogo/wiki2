# mouse

- finding mouse name:
egrep "Name|Handlers" /proc/bus/input/devices | egrep -B1 'Handlers.*mouse'


- led lights
sudo pacman -S piper


- mapping mouse buttons
instructions at Arch Linux -> Mouse Buttons
configure Xorg
yaourt xvkbd
pacman -S xbindkeys
use ~/.xbindkeysrc




# sources
https://wiki.archlinux.org/index.php/Mouse_buttons

