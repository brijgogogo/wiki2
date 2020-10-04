# sshd
sshd is the OpenSSH server process
The initial process acts as the master server that listens to incoming connections. A new process is created for each new SSH session.

## config
location: /etc/sshd/sshd_config
- specifies encryption options, authentication options, file locations, logging, and various other parameters.

## logging
The SSH server uses the syslog subsystem for logging.

$ pacman -S openssh
install in both server and client

$ sudo systemctl start sshd.socket
start sshd in server

$ sudo systemctl enable sshd.socket
to enable at boot

$ ssh localhost
test if sshd is running

$ ssh -p port user@server-address
from client connect to a server


