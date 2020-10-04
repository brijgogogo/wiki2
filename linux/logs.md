# Linux Logs
Most common log fies are in /var/log

systemd has a database, which you can query using journalctl.

Check log size:
du -csh /var/log/


alternatives.log
When you add tools to your system


## systemd logging / journal
- systemd has its own logging system called the journal
- use journalctl to read logs
- service: systemd.journald.service

## journalctl
- lists the logs using less
- you can choose from the fields of the logs
- option to search by systemd units, the command and the executable path, etc.
- config: /etc/systemd/journald.conf
- writes to /var/log/journal/

PRIORITY : emergency(0), critical (2), lower priority events until the value 7
UNIT: service names, mount names, timer units
Executable: executable name

journalctl --disk-usage
- show messages from this boot:
journalctl - b
journalctl --since "20 min ago"
- follow new messages:
journalctl -f
- show messages by specific executable:
journalctl /usr/lib/systemd/systemd
- keep data data for only last 2 weeks
journalctl --vacuum-time=2weeks
- keep only upto 100M data
journalctl --vacuum-size=100M

sources: https://wiki.archlinux.org/index.php/Systemd/Journal




## dmesg
Shows all the kernel activities at boot.


