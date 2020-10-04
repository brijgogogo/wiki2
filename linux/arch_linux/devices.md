# udev
- udev is a device manager for the Linux kernel.
- udev primarily manages device nodes in the /dev directory.
- udev handles all user space events raised while hardware devices are added into the system or removed from it, including firmware loading as required by certain devices.

udev is now part of [systemd](./services.md) and is installed by default.

udev rules written by the administrator go in /etc/udev/rules.d/, their file name has to end with .rules. The udev rules shipped with various packages are found in /usr/lib/udev/rules.d/. If there are two files by the same name under /usr/lib and /etc, the ones in /etc take precedence.

# sources
https://wiki.archlinux.org/index.php/Udev

