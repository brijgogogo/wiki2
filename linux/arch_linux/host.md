# host

## hostname
/etc/hostname

## set host name
$ echo 'host_name' > /etc/hostname
or
$ hostnamectl set-hostname <host-name>

## hostname info
$ hostnamectl

## configure local hostname resolution
add below to /etc/hosts
127.0.0.1 localhost
::1     localhost
127.0.1.1 host_name.localdomain host_name

## verify host name resolution
$ getent hosts


## sources
https://wiki.archlinux.org/index.php/Network_configuration#Set_the_hostname
