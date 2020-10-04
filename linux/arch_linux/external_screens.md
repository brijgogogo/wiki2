# arch screen

- xrandr | grep "*"
to find screen resolution
- xdpyinfo
to find screen resolution
- xrandr --listmonitors


## video
- xrandr
list the devices connected
- xrandr --output HDMI-1 --mode 1366x768
xranddr --output <monitor> --auto
set output
- xrandr --output HDMI-1 --off
turn off output

GUI: arandr


## autorandr
save and load settings of xrandr
- autorandr --save <config_name>
save a config
- autorandr
list configs
- autorandr --load <config_name> or autorandr <config_name>
load a config
- autorandr --load <config_name> --force
- autorandr --change
automatically reload setup

## mons
- yay 2-monitors
manage multiple monitors
- mons
list monitors
- mons -e right
enable and extend the second monitor to right
- mons -s
display only second
- mons -n right
go through 2-mons mode consecutively
primary only -> second only -> extend -> mirror -> duplicate
https://github.com/Ventto/mons

## hdmi sound
- aplay -l
list devices
- aplay -D plughw:0,7 /usr/share/sounds/alsa/Front_Center.wav
send sound to card 0, device 7
https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture/Troubleshooting#HDMI
- aplay -l | awk -F \: '/,/{print $2}' | awk '{print $1}' | uniq
cat /proc/asound/card*/id
get card names

## sound
pacmd list-cards
aplay --list-devices
aplay --list-pcms
aplay -l
speaker-test -D hdmi:CARD=HDMI,DEV=1 -c 2
aplay -D plughw:0,7 /usr/share/sounds/alsa/Front_Center.wav



## sources
https://wiki.archlinux.org/index.php/Xrandr
https://bbs.archlinux.org/viewtopic.php?id=132641
https://github.com/phillipberndt/autorandr

