# See Devices
- mount
- mount | column -t
- mount | grep /dev/sd
see the mounted devices
- lsblk
lists out the block devices (mounted or not)
https://wiki.archlinux.org/index.php/Persistent_block_device_naming
- lsblk -f
view persistent schemes
- df -h
show details of mounted file systems
- lspci
lists PCI devices
- lspci -v
- lspci -vv
- lspci -vvv

- lsusb
list the usb devices

- fdisk -l
show details of file systems

## Mounting Devices
- mount /dev/sdb1 /path/to/
- ntfs-3g /dev/sdb1 /path/to/
- umount /dev/sdb1
- umount /path/to

use below when getting "target is busy"
- umount -l /dev/sdb1
- umount -f /dev/sdb1

## Formatting
- mkfs.vfat /dev/sdb1
format using vfat file system
- mkfs.ntfs /dev/sdb1
format using ntfs file system
- mkfs.ext4 /dev/sdb1
format using ext4 file system
- mkfs.vfat -n 'name_for_your_pendrive' -I /dev/sdb1
- mkfs.fat -F32 /dev/sdb2


## Make Bootable USB
make bootable usb in linux using dd (Data Duplicator)
1) sudo umount /dev/sdX
2) sudo dd if=/path/to/ubuntu.iso of=/dev/sdX bs=4M && sync
where sdX is your usb device (this can be verified with lsblk)
The sync bit is important as dd can return before the write operation finishes.

## formatting usb
1. sudo dd if=/dev/zero of=/dev/sdb bs=4k && sync  : erases
2. sudo fdisk /dev/sdb
press `o` to create new empty DOS partition table
press `n` to create add new partition
3. sudo mkfs.vfat /dev/sdb1
4. sudo eject /dev/sdb

## Labeling
When an automounter mounts a USB stick, it uses the file system’s label as
this mount point if there is one. Otherwise it uses the UUID. You can add a
label to an existing file system – the command is different for each type:
- e2label /dev/sdb1 Photos
- fatlabel /dev/sdb1 Music
%% Run either of these without giving a label to get existing label.


- df -h
see used/avail space
- lsblk
show hardware devices


