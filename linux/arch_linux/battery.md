# battery

ACPI interface
battery sends events to udev whenever it (dis)charges by 1%, this event can be connected to some action using a udev rule.

- sudo pacman -S acpi
$ acpi

/sys/class/power_supply/BAT1/uevent

- udevadm monitor --property
check battery events

## sources
https://wiki.archlinux.org/index.php/Laptop
