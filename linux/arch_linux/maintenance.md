# Arch maintenance

- check failed systemd services
systemctl --failed

- check logfiles (/var/log)
journalctl -p 3 -xb

- To get rid of packages that may have been pulled in as dependencies but are no longer needed by any packages
pacman -Rns $(pacman -Qtdq)

- show all packages that were explicitly installled
pacman -Qen


- updating mirrorlist
Location: /etc/pacman.d/mirrorlist
https://www.archlinux.org/mirrorlist/
https://wiki.archlinux.org/index.php/Mirrors




## update pacman package repository cache
The package manager keeps a local database of all the packages available in the package repository. In that database information like where the packages can be downloaded, their download size, their dependency packages and so on are kept.

sudo pacman -Syy

## Pacman has to download all of the packages that ultimately get installed on your system.
It stores these packages in a cache located in /var/cache/pacman/pkg/

Clearing the cache out entirely means you cannot downgrade easily to an older version of installed software,

- remove everything in the cache:
pacman -Sc

- By default, paccache will remove everything except the latest THREE versions of a package,
paccache -r

- remove all cached versions of uninstalled packages
paccache -ruk0

## Rolling Back to an Older Version of a Package
pacman -U /var/cache/pacman/pkg/name-version.pkg.tar.gz

## Find orphaned files by packages
pacman -S lostfiles

## sources
https://wiki.archlinux.org/index.php/System_maintenance
