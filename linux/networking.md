# Networking

- lspci -k
check if the driver for your card has been loaded
or lsusb -v

- lsof -i
watch network service activity in real time
- lsof -i tcp:80
which command this port belongs to
- ip addr show
List network information

- ping www.google.com
check your connection

- whois <domain.com or ip-address>

- drill archlinux.org
get information out fo DNS

- python3 -m http.server
starts a server on port 8000 at current directory, to share files between computers on your local network

- iftop
list processes sending and receiving network data along with source and dest



- bind-tools package
dig: domain information groper
- tool for querying DNS name serversnew

- [pfsense](./pfsense/index.md)

## map local ip to machine name
- install nmap
- sudo nmap -sn 10.27.27.1
