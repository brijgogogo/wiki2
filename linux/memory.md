# memory & cpu
Physical Memory: Random Access Memory
Swap: Allocated disk space
Disk Caching: RAM capacity "borrowed" for application use(to load application data). Is dumped when RAM is required by system.

## Memory
- free -m
  shows memory in megabytes
- free -g
  see free memory in GBs

- cat /proc/meminfo
  virtual file that contains dynamic info about the kernel and the sytem

- top
  memory, cpu usage per process

- htop
- gotop


* less /proc/meminfo
Mem Free: free RAM (including Disk Caching)
Mem Available: free RAM (excluding Disk Caching)
Mem Available counts is better.
* free -h
see memory usage
* vmstat 1 4
report Virtual Memory statistics
si: swap in
so: swap out
If si, so is high, we need to figure why we are running out of real RAM.


## cpu
* less /proc/cpuinfo
contains information about CPU
* less /proc/cpuinfo | grep processor
show number of processors
* uptime
shows time for which system is up
also shows CPU load average for last 1, 5 and 15 minutes
Single Processor: 1.0  = 100%, 0.5 = 50%
Four Processors:  1.0 = 25%  , 2.0 = 50%
* top
* ps aux | grep <pid>
* sudo journalctl _PID=<pid>



== killing, disabling startup of processes ==
* yes > /dev/null &
run 3 instances of above command to simulate killing it later
* kill pid
* killall yes
* sudo systemctl status mysql
* sudo systemctl disable mysql

== control cpu priority ==
#!/bin/bash
# stress CPU
while true; do true; done
* use above script to put stress on CPU, save as stresser.sh
* nice -19 ./stresser.sh &
least priority to the process


== cgroups - control groups ==
assign processes to groups whose system writes is controlled by the limit you set
* cgcreate -a ubuntu -g cpu:testgroup
* cd /sys/fs/cgroup/
* cd cpu
* less cpu.cfs_period_us
contains time available fo a cpu
* less cpu.cfs_quota_us
* cgset -r cpu.cfs_quota_us=25000 testgroup
* less cpu.cfs_quota_us
* cgexec -g cpu:testgroup stresser.sh
* top

* less memory.limit_in_bytes
* cgcreate -a ubuntu -g memory:stopvicky
* cgset -r memory.limit_in_bytes=512m stopmarvin
* cgexec -g memory:stopvicky /opt/google/chrome/chrome
