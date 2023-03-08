# Networking

## Networking Models
Models are used to represent how networks function.
Popular network modles:
1. [OSI](OSI.md) 7-layer model
2. [TCP](TCP.md)/IP model

* [network_layer](network_layer.md) (ip addressing, routing)


IP Address: logical address

## IPv4
- invented in 1981
- managed by Internet Assigned Numbers Authority (IANA)
- 32 bits => 4.2 billion addresses
- IPv4 Structure: 192.168.1.15 (base 10): First 3 parts are Network ID, last is Host ID
   Each part has 8 bits / 1 byte / 1 octet. Max number in each part can be 255 as (11111111) base 2 = (255) base 10
- Subnet Mask: used by TCP/IP to determine whethher a host is on a local subnet or on a remote network.
  Subnet: Sub network
  E.g:
  IP address:       192.168.123.132  - 11000000.10101000.01111011.10000100
  Subnet mask:      255.255.255.0    - 11111111.11111111.11111111.00000000
  -------------------------------------------------------------------------
                                          V        V        V        V
  -------------------------------------------------------------------------
  Network address:  192.168.123.0    - 11000000.10101000.01111011.00000000   (lining first 3 parts of IP and subnet mask)
  Host address:     000.000.000.132  - 00000000.00000000.00000000.10000100   (lining last parts of IP and subnet mask)

- IPv4 address are divided into classes:
  - Class A: First Octect between 1-126 and default subnet mask 255.0.0.0. Eg. 10.52.32.11. Everything before the first period indicates the network and everything after it specifies the device within that network.
  - Class B: First Octect between 128-191 and default subnet mask 255.255.0.0. Eg. 172.16.52.63. Everything before the second period indicates the network.
  - Class C: First Octect between 192-223 and default subnet mask 255.255.255.0. Eg. 192.168.123.132. Everything before the third period indicates the network.
  - Class D  (Multicast IP address) (not used by general public)
  - Class E (Experimental IP addresses) (not used by general public)

## Subnet
A subnet or subnetwork is a network inside a network.


## IPv6
- 128 bits
- Represented in hexadecimals
- Co-exists with IPv4
- Structure: comprised of 8 16 bit blocks, each block is represented as 4 digit hexacimal numbers separated by colon.
  2001:0000:3238:DFE1:0063:0000:0000:FEFB

## Static & Dynamic IP addresses
- Static: manually assigned
- Dynamic: assigned dynamically. Need DHCP server for it.

## Dynamic Host Configuration Protocol (DHCP)
- Contains a pool/range or IP addresses to assign
- Each IP is assigned with a lease (period), if not renewed it expires.

## Automatic Private IP Addressing (APIPA)
- Link-local address: Cannot communicate outside of local network.
If DHCP server is not available, your workstation can assign itself an IP using APIPA.


* [dns](dns.md)

## Gateway
If you need to communicate outside of local network, like to internet, you need to specify Gateway.
This is usually your router in local network.


## Hub
- Connects networks together
- No intelligence over data transmission
- Multiport repeater
- Operates at half-duplex: allows only one device to communicate at a time
  - Less efficient as traffic increases
- speed 10/100Mbits/s
- Legacy device

## Switch
- Connects networks together
- Intelligence: forwards traffic to the right interface based on destination
  - Intelligence comes from hardware called ASIC (Application Specific Integrated Circuit)

## Routers
- Used to route traffic from one subnet to another
  - Makes forwarding decision based on destination IP
  - Uses routing table inside the device
- Connects multiple types of networks together
  - e.g. a LAN and a WAN connected in the same router
- A router inside of a switch is called a layer 3 switch

## Access Point
- A wireless router is a WAP (Wireless Access Point) and a router in one
- Bridge that connects wired and wireless networks
- Smart forwarding decisions

## Cable/DSL Modem
- Modulator/demodulator
- Converts signal between analog and digital

## Firewall
- Can be in router or dedicated hardware
- Filter traffic by port number / applications

## Network Interface Card (NIC)
- Connects a device to the network

## Repeater
- Cable with 10/100/1000 Mbps can be max 100m
- A repeater allows the signal to go further
  - regenerates the signal

## Bridge
- Connects different networks together
- Nowadays incorporated into switches

## Patch Panel
- Used for larger networks
- Endpoint for connecting from a person's desk o the switch/router

## Cloud based Network Controller
- Cloud service/interface for managing networking hardware

## Ethernet over Power (EoP) / Power Line Communication (PLC)
- Transmit network connection through power lines already in the building

## Power over Ethernet (PoE)
- Sends power over ethernet connection
- Capability found in switch
- Additionally PoE injector can add capability (placed between switch and end device)



## [small_network_setup](small_network_setup.md)
