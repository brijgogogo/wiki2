# systemd
`systemd` is a suite of basic building blocks for a Linux system. It provides a
system and service manager that runs as PID 1 and starts the rest of the
system.

The main command used to introspect and control systemd is `systemctl`.

## Analyzing System state
`systemctl status`
`systemctl`
Show system units  (or systemctl list-units)
`systemctl --type=service`
`systemctl status "service-name.service"`
`systemctl --failed`
`systemctl show --property=UnitPath`
* systemctl list-unit-files

Units can be, for example, services (.service), mount points (.mount), devices
(.device) or sockets (.socket).
`systemctl start unit` : start service now
`systemctl stop unit`
`systemctl restart unit`
`systemctl reload unit`
`systemctl enable unit`   : enable to start at boot
`systemctl disable unit`
`systemctl help unit`
`systemctl daemon-reload`

* systemctl start apache2.service
Systemd uses the systemctl command to manage services.
1. systemctl --all
1. systemctl status bluetooth
1. systemctl stop bluetooth

* systemctl list-units --type=target

systemctl list-unit-files --type=service
systemctl list-unit-files --state=enabled

## sources
https://wiki.archlinux.org/index.php/Systemd
https://opensource.com/article/20/5/systemd-startup
