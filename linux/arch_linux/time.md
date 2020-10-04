# time
time/clock is determined by four parts:
1. time value
2. whether it is local time or UTC or something else
3. time zone
4. Daylight Saving Time (DST) if applicable


# Two clocks are present on systems:
1. hardware clock (aka Real Time Clock, CMOS clock, BIOS time)
2. system clock (aka software clock)

- Standard behavior of most operating systems is:
- Set the system clock from the hardware clock on boot.
- Keep accurate time of the system clock
- Set the hardware clock from the system clock on shutdown.

- see hardware clock time
$ sudo hwclock --show

- set hardware clock from system clock
$ hwclock --systohc

- see time (both clocks)
$ timedatectl

- To set the local time of the system clock directly:
$ timedatectl set-time "yyyy-MM-dd hh:mm:ss"

## Time standards
There are two time standards:
1. localtime
2. Coordinated Universal Time (UTC).
The localtime standard is dependent on the current time zone, while UTC is the global time standard and is independent of time zone values.

The standard used by the hardware clock is set by the operating system.
- Windows - localtime
- macOS - UTC
- UNIX-like systems vary
An OS that uses the UTC standard will generally consider the hardware clock as UTC and make an adjustment to it to set the OS time at boot according to the time zone.


- To change the hardware clock time standard to localtime, use:
$ timedatectl set-local-rtc 1
- To revert to the hardware clock being in UTC, type:
$ timedatectl set-local-rtc 0


- [timezone](./timezone.md)

## sources
https://wiki.archlinux.org/index.php/System_time


