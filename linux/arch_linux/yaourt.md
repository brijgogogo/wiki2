# yaourt

$ yaourt [software package name]
To install a package from AUR

$ yaourt -Qm
list packages installed by yaourt

$ yaourt -Syua
Upgrade all packages downloaded from the AUR


$ yaourt -S [software package name]
To install a package from AUR

$ yaourt -Syua
Upgrade all packages downloaded from the AUR


## enable yaourt
- add below to /etc/pacman.conf
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch

- pacman -Sy yaourt
