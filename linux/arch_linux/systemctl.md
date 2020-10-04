# systemctl
In Arch Linux, datemons are managed by "systemd". "Systemctl" command is the user interface to manage them. It reads the "name.service" files that contain information about how and when to start the associated daemon.

Service files: /{etc,usr/lib,run}/systemd/system

# Units
Units can be: services (.service), mount points (.mount), devices (.device), sockets (.socket)


- systemctl start unit
- systemctl stop unit
- systemctl restart unit
- systemctl reload unit (reload config)
- systemctl status unit
- systemctl enable unit (on bootup)
- systemctl enable --now unit
- systemctl disable unit
- systemctl help unit



# power management
systemctl reboot
systemctl poweroff
systemctl suspend
systemctl hibernate


# sources
https://wiki.archlinux.org/index.php/Systemd#Using_units
