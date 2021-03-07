# Partitions

A hard drive can be divided into sections (partitions). The information is stored in a `Partition Table` scheme such as MBR or GPT. Partition tables are created by tools like `fdisk` and `parted`.

Once created, a partition must be formatted with an appropriate file system (swap excepted) before data can be written to it.

## print/list existing partitions (of specific device like /dev/sda):
$ parted /dev/sda print
$ fdisk -l /dev/sda

## Types of partition table:
1. Master Boot Record (MBR)
2. GUID Partition Table (GPT)

## MBR
MBR is the first 512 bytes of a storage device. It contains an operating system bootloader and the storage device's partition table. It plays an important role in the boot process under BIOS (Basic Input and Output) systems.

Thre are 3 types of partitions in the MBR scheme:
* Primary
* Extended
  * Logical

`Primary` partitions can be bootable and are limited to 4 partitions per disk.

`Extended` partitions can be thought of as containers for `logical` partitions. A hard disk can contain no more one extended partition. The extended partition is also counted as a primary partition. The number of logical partitions residing in an extended partition is unlimited.

The customary numbering scheme is to create primary parititions `sda1` through `sda3` followed by an extended partition `sda4`. The logical partitions on `sda4` are numbeted `sda5`, `sda6`, etc.


## GPT
GPT is a partitioning scheme that is part of the Unified Extensible Firmware Interface (UEFI) specification; it uses globally unique identifiers (GUIDs), or UUIDs in the Linux world, to define partitions and partition types. It is designed to succeed the MBR. You can have arbitrary number fo partitions in GPT.

= MBR vs GPT =
- number of parititions: MBR - max 4 primary partitions, GPT: 128 primary partitions
- partition size: MBR’s [2 Terabytes], and GPT’s [2³³ terabytes]

## tools:
MBR: fdisk
GPT: gdisk

fdisk supports GPT since util-linux 2.23

## find type of partition table
$ parted /dev/sda print
see Partition Table value. msdos means MBR, gpt means GPT

## Sources
[[https://wiki.archlinux.org/index.php/Partitioning|Partitioning]]
https://wiki.archlinux.org/index.php/Fdisk
https://wiki.archlinux.org/index.php/GPT_fdisk

