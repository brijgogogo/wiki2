# dunst

## shortcuts
- Ctrl + Space
clear notification
- Ctrl + Shift + Space
clear multiple notifications
- Ctrl + grave
check history. grave = `
- Ctrl + Shift + period
opens dmenu to show urls to visit in browser


In formatting the actual output, Dunst uses a markup syntax from Pango. It's essentially HTML style text formatting blended with specific variables.
format option control output text

## config
- cp /usr/share/dunst/dunstrc /home/user/.config/dunst/dunstrc
- monitor option will determine which monitor(counting from 0) the notifications will pop up on.
- The follow option will override monitor and place the notifications on whichever screen has focus from either the mouse or keyboard. If you prefer the notifications to be fixed to one monitor, set this option to none.
https://linuxconfig.org/get-better-notifications-in-your-wm-with-dunst

## sources
https://wiki.archlinux.org/index.php/Dunst

