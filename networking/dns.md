# DNS / Domain Name Server
Translates domain names to IP addresses.

- DNS Server: a type of name server that manages Internet domains records. It imelements DNS protocol.
- Domain Name System: tree of domain names. Every node has zero or more resource records. Tree is further divided into zones.
- DNS Record: database record used to map a URL to an IP address, stored in DNS servers
record types:
  - A (address: ip address)
  - CNAME (canonical name - alias for host name)
  - MX (mail exchange - mail server)
  - NS (name server - primary, secondary)
  - PTR (pointer: maps an IP address to the host name to do reverse lookups)
  - SOA (start of authority)
  - TXT (text record: arbitrary text)

- DNS Lookup: process by which a DNS record is returned from a DNS server. When you type www.abc.com, the request is forwarded to DNS server, which returns corresponding IP address
types:
  - forward DNS lookup: domain name is used to obtain its corresponding IP address
  - reverse DNS lookup: DNS lookup of a domain name from an IP address


## Private DNS server
You can have private DNS as well. Both public and private DNS can work together as well.


