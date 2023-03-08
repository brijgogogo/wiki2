# usb operations

## erase everything
sudo dd status=progress if=/dev/zero of=/dev/sdb bs=4k && sync

## make new partition table
sudo fdisk /dev/sdb
Then press letter o to create a new empty DOS partition table.

## Make a new partition:
Press letter n to add a new partition. You will be prompted for the size of the partition. Making a primary partition when prompted, if you are not sure.
Then press letter w to write table to disk and exit.

## format new partition
sudo mkfs.vfat /dev/sdb1
sudo eject /dev/sdb


## format to ntfs
install ntfs-3g
sudo mkntfs --fast --label myUsbDrive /dev/sdb1

## format (GUI)
Use gparted
for ntfs install ntfsprogs



## Bootable USB using DD
- sudo fdisk -l
view list of all drives
USB drive is specified as /dev/sdx and not /dev/sdxX. Most commonly it is /dev/sdb

- sudo umount /dev/sdb

- sudo mkfs.vfat /dev/sdb -I

- sudo dd bs=4M if=/path/to/antergos-x86_64.iso of=/dev/sdX status=progress && sync



## windows bootable usb
- yaourt woeusb

$ sudo woeusb --device win_10.iso /dev/sdb

If your Windows ISO image is bigger than 4GB, you’ll need to use NTFS filesystem in the USB device.

$ sudo woeusb --device Windows-10.iso /dev/sdb --target-filesystem ntfs


## sources
https://computingforgeeks.com/create-windows-10-bootable-usb-on-linux/
