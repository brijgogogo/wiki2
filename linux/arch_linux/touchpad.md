# Arch Touchpad


`libinput list-devices`  : list devices
`xinput list`          : list devices
`xinput list-props <deviceNumber>` : see device settings
`xinput set-prop <deviceNumber> <settingNumber> <newValue>`

- pacman -Ss xorg-xinput

https://wiki.archlinux.org/index.php/Libinput

To make settings permanent, create a file /etc/X11/xorg.conf.d/30-touchpad.conf with below content:
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "Tapping" "on"
EndSection
