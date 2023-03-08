# Brightness
Brightness settings are at /sys/class/backlight/<driver>.
Check `max_brightness` file for max brightness and adjust the value in
`brightness` file.

Use community/acpilight
Remove xorg-xbacklight

Control brightness using aciplight
https://gitlab.com/wavexx/acpilight

To run xbacklight without sudo:
1) add udev rule /etc/udev/rules.d/90-backlight.rules:
ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
https://gitlab.com/wavexx/acpilight/blob/master/90-backlight.rules

1) add yourself to group video: sudo usermod -a -G video $USER

2) run: sudo udevadm control -R && sudo udevadm trigger -c add -s backlight



# for nvidia driver
(check discusstion tab in Arch Linux )

add /usr/share/X11/xorg.confg.d/20-nvidia.conf

Section "Device"
	Identifier "NVIDIA"
	Driver "nvidia"
	Option "NoLogo" "True"
	Option "RegistryDwords" "EnableBrightnessControl=1"
EndSection

http://www.thinkwiki.org/wiki/LCD_Brightness#Nvidia_driver



# Lenovo y540 (not needed)
add kernel paramter: acpi_backlight=vendor
https://wiki.archlinux.org/index.php/Backlight#Kernel_command-line_options


