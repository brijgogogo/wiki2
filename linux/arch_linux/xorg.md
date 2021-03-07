# Arch GUI

## xorg
- The X.Org project provides an open source implementation of the X Window System.
- Xorg (commonly referred as simply X) is the most popular display server among Linux users.

$ pacman -S xorg-server

The Xorg command is usually not run directly, instead the X server is started with either a display manager or xinit.

https://wiki.archlinux.org/index.php/Xorg

## xinit
- The xinit program allows a user to manually start an Xorg display server.
- The startx script is a front-end for xinit.
- xinit is typically used to start window managers or desktop environments.
- you can also use xinit to run GUI applications without a window manager

$ pacman -S xorg-xinit

xinit and startx take an optional client program argument. If you do not provide one they will look for ~/.xinitrc to run as a shell script to start up client programs.

https://wiki.archlinux.org/index.php/Xinit


Xorg uses a configuration file called xorg.conf and files ending in the suffix .conf for its initial setup.

The /etc/X11/xorg.conf.d/ directory stores host-specific configuration. You are free to add configuration files there, but they must have a .conf suffix.


- pacman -S xorg-xev
print xorg events
used to identify things like button numbers in mouse, etc



## Desktop Environment (DE) vs Windows Manager (WM)
DE: full featured: window managger, file explorer
WM: manages windows

In order to have a GUI we need X(org)
- pacman -S xorg-server xorg-xinit
You can start X by runing `xinit` or `startx`
This will read `~/.xinit.rc` to know what to start


## nvidia
pacman -S nvidia
pacman -S nvidia-settings
https://wiki.archlinux.org/index.php/NVIDIA

** add hook for mkinitcpio **

## i3
https://wiki.archlinux.org/index.php/I3
$ pacman -S i3-wm
in ~/.xinitrc add:
exec i3


To start i3 at login from tty1, add below to ~/.bash_profile
if [[ "$(tty)" = "/dev/tty1"  ]]; then
  pgrep i3 || startx
fi

## installing xfce
- pacman -S xfce4
- add `exec xfce4-session` in ~/.xinitrc

## installing lxdm display manager
- pcman -S lightdm lightdm-gtk-greeter
- sudo system ctl enable lightdm.service
LightDM gives you a login screen. It automatically finds the installed DE/WM and allow you to choose at login.

## fonts
- pacman -S ttf-linux-libertine ttf-inconsolata
or
- pacman -S noto-fonts

