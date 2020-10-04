# ssh command 
- already included in Linux/Unix systems
- starts ssh client program
- used for terminal access, file transfers, tunneling other application. Graphical X11 applications can also be securely run over SSH from a remote location.

$ ssh some-machine.com
log into remote computer
$ ssh username@some-machine.com
log in using different user name
$ ssh -l username some-machine.com
log in using different user name
$ ssh hostname command
execute command without logging in
e.g. ssh host.com ls /tmp

## options 
-p <port>
-l <login_name>
-V  (display version number)
-v  (verbose mode)
-X (enables X11 forwarding)
-C use data compression
-4 use IPv4 addresses only
-6 use IPv6 addresses only



## configuration 
~/.ssh/config

