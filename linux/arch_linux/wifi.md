# wifi

## show wireless device
$ iw dev
$ lspci -nnk | grep -iA3 net
$ sudo lspci -vnn -d 14e4:

## see wifi profiles
$ netctl list
$ ls /etc/netctl

## enable a profile at boot
$ netctl enable <profile>

## connect to wifi
$ sudo pacman -S dialog
$ wifi-menu

## utilities
$ pacman -S iw
$ iw dev wlp2s0 link (check status)
$ iw dev wlp2s0 scan (scan)
$ ip link set wlp2s0 up
$ ip link show wlp2s0


## install wifi driver (optional)
$ yaourt broadcam-wl    (for my Acer broadcam wifi)

Asus Aspire E 15
Broadcom BCM43142 wireless device
Kernel driver in use: wl
pacman -S broadcom-wl

## troubleshooting
- Rfkill caveat
Many laptops have a hardware button (or switch) to turn off wireless card, however, the card can also be blocked by kernel. This can be handled by rfkill. To show the current status:
$ rfkill list
If the card is hard-blocked, use the hardware button (switch) to unblock it. If the card is not hard-blocked but soft-blocked, use the following command:
$ rfkill unblock wifi
https://wiki.archlinux.org/index.php/Wireless_network_configuration#Rfkill_caveat


## sources
https://wiki.archlinux.org/index.php/Broadcom_wireless
https://wiki.archlinux.org/index.php/Wireless_network_configuration
https://linoxide.com/linux-how-to/netctl-setup-wifi-static-ip-arch-linux/
https://www.ostechnix.com/fix-job-netctl-service-failed-error-arch-linux/
http://blog.programmableproduction.com/2016/02/15/ArchLinux-Setting-Network-With-Netctl/
https://wiki.archlinux.org/index.php/Wireless_network_configuration
