# Arch Linux Installation (UEFI GPT)

1. prepare usb
  - download from https://www.archlinux.org/download/
  - make bootable USB:
    dd if=image.iso of=/dev/sdb bs=4M status=progress && sync
    https://wiki.archlinux.org/index.php/USB_flash_installation_media

    (find /dev/sdb usb using lsblk or fdisk -l)
    (use rufus for Windows)

    To find bood mode in Windows
      a. Win + R, msinfo32
      b. System Summary : Bios Mode (if UEFI then Windows boots in UEFI GPT mode, if legac, then BIOS-MBR mode)

    The Windows installation creates the EFI System Partition which can be used by your Linux bootloader.
    Linix boot loader: grub or syslinux
2. Disable secure boot is in Windows
3. Boot from usb
4. timedatectl set-ntp true
5. connect to [[internet]]
6. To check if you have booted in UEFI mode check ls /sys/firmware/efi/efivars
7. create [[partitions]] for root (/), /home, /boot
8. Mount the partitions:
  mount /dev/sda3 /mnt         (/ root)

  mkdir /mnt/home
  mount /dev/sda5 /mnt/home   (/home)

  mkdir /mnt/boot
  mount /dev/sda1 /mnt/boot   (sda1 is EFI System partition, created by Windows)

9. Install Arch:
  pacstrap -i /mnt base base-devel vim
10. linux needs to store partitions and mount information for future use to auto mount drives
lets generate that configuration file
$ genfstab -U -p /mnt >> /mnt/etc/fstab
11. switching from USB to arch root on your system
arch-chroot /mnt /bin/bash
12. configure [[locale]]
13. configure [[keyboard]] (optional, default: US)
14. set [[timezone]]
15. set hardware clock (see [[time]] for more info)
hwclock --systohc --utc
16. set [[host]] name
15. set root password
$ passwd
17. add users:
$ useradd -mg users -G wheel,storage,power -s /bin/bash user_name
set user's password
$  passwd user_name
change password expiry
$  chage -d 0 user_name



19. systemd-boot loader
bootctl --path=/boot install
in /boot/loader/entries/arch.conf add below:
title Arch Linux
linux /vmlinuz-linux
initrd /initramfs-linux.img

then:
echo "options root=PARTUUID=$(blkid -s PARTUUID -o value /dev/sda2) rw" >> /boot/loader/entries/arch.conf
/dev/sda2 is root partition

//pacman -S intel-ucode // ignore


Edit /boot/loader/loader.conf

timeout 0
default arch
editor 0
Finish installation and boot to new system

mkinitcpio -p linux
exit
umount -R /mnt
reboot

* [[general_recommendations]]



= troubleshooting =
If your machine has nvidia graphic card, install the drivers otherwise console/tty may appear distorted

== Sources ==
https://wiki.archlinux.org/index.php/Installation_guide
https://lampjs.wordpress.com/2017/01/19/easy-installing-arch-linux-dual-boot-with-windows-uefi-or-mbr-for-beginners/
https://lampjs.wordpress.com/2017/01/19/easy-installing-arch-linux-dual-boot-with-windows-uefi-or-mbr-for-beginners/
http://www.adonespitogo.com/articles/arch-linux-EFI-installation/page-2.html
https://www.gloriouseggroll.tv/arch-linux-efi-install-guide/
https://arcolinuxd.com/5-the-actual-installation-of-arch-linux-phase-1-uefi/
https://gist.github.com/heppu/6e58b7a174803bc4c43da99642b6094b

Systemd-boot
https://www.addictivetips.com/ubuntu-linux-tips/set-up-systemd-boot-on-arch-linux/


