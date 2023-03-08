# internet

## NetworkManager ************************************************
Can handle both ethernet and wifi
  pacman -S NetworkManager
  systemctl enable NetworkManager
  nmcli device wifi list
  nmcli device wifi connect <BSSID/SSID> password <password>
https://wiki.archlinux.org/title/NetworkManager


$ nmcli con show
List currently available network connections
$ nmcli dev status
Available devices
$ nmcli connection add type ethernet con-name my-hone ifname enp7s0
Add Ethernet connection
$ nmclil con up <connection-name>

## list interfaces
$ ip link
$ ip addr
$ ls /sys/class/net

## see specific interface
$ ip link show dev <interface>

## set interface up/down
$ ip link set <inteface> up
$ ip link set <interface> down
verify state
$ cat /sys/class/net/<interface>/operstate


## see ip address
$ ip addr show dev <interface>

## [ethernet](./ethernet.md)
## [wifi](./wifi.md)
## [host](./host.md)

## check connectivity
ping -c 3 google.com



