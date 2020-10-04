= internet =

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

- [ethernet](./ethernet.md)
- [wifi](./wifi.md)
- [host](./host.md)

## check connectivity
ping -c 3 google.com



