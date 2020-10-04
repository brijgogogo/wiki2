# pacman

pacman <operation> [options] [targets]

## operations
- -Q, --query
query package database
- -S , --sync
synchronize packages
- -R, --remove
remove packages from the system
- -D, --database
operate on the package database
- -T, --deptest
check dependencies
- -U, --upgrade
- -h, --help

## options
- --color <when>
always, never, auto


## query options
- -m, --foreign
packages that were downloaded manually
- -n, --native
inverse filter of --foreign
- -q, --quiet
show less info
- -s, --search <regexp>

## sync options
- -c, --clean
remove packages that are no longer installed from cache, as well as currenctly unused sync databases
- -u, --sysupgrade
upgrades all packages that are out-of-date
- -y, --refresh
download a fresh copy of the master package database

## targets
a package name, file name, URL, or a search string


## examples
pacman -Ss <package_name> : search package
pacman -S <package_name> : install package
pacman -S testing/qt
pacman -S "bash>=3.2" : install version
pacman -S gnome   : here gnome is a group
pacman -Syu : upgrade all packages that are out-of-date
pacman -Qm : list installed packages
pacman -R <package> : remove






## Colors in pacman
pacman.conf
- uncomment below line to enable colors in pacman output
Color

