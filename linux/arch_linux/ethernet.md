# ethernet

## start ethernet
$ systemctl start dhcpcd@<interface>.service

## enable at boot
$# systemctl enable dhcpcd@<interface>.service

## disable at boot
$ systemctl disable dhcpcd@<interface>.service
