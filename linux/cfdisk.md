# cfdisk

Steps:
1. dmesg
looks for just now inserted device name
2. lsblk
verify your device name
3. cfdisk /dev/sdb
It shows the table with partitions or empty space.
Use up/down arrow keys to select a partition. Use left/right arrows keys to select [Delete] and press endter to delete the partition.
Select [New] and press Enter to create new partition, enter value like 2G or 250M at the prompt.
Selecting the partition, select [Bootable] and press Enter to make it bootable (as Boot Partition), a start * appears next to the partition.
We can use [Resize] to grow/shrink the partition.
Select [Write] to write to disk.
Quit using [Quit].

* [[devices]]
- [devices](./devices.md)

