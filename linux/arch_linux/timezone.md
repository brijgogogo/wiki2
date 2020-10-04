# timezone
- To check the current zone defined for the system:
$ timedatectl status

- To list available zones:
$ timedatectl list-timezones

- To set your time zone:
$ timedatectl set-timezone Zone/SubZone
Example:
$ timedatectl set-timezone Europe/Dublin
$ timedatectl set-timezone Asia/Kolkata
$ ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

- verify current timezone
$ ls -la /etc/localtime

