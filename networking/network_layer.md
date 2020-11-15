# network layer
- Network layera moves traffing from one device to some other device
- Every device must have unique identifier : ip address

## ip address
- 4 numbers separated by decimal in format: xx.xx.xx.xx
- each number can be between 0 and 255

An IP address has two components:
1. Network address
2. Host address
A subnet mask separates the IP address into network and host address (<network><host>)
A subnet mask is a 32-bit number that masks an IP address.
Subnet mask is made by setting network bits to all 1s and setting host bits to all 0s.

- first 3 numbers : Network portion - points to larger group of network
- Last number: Host portion - points to specific host in a larger group of network

ip address is 32 bit value, divided into 4 octects. Each octet being 8 bits.

## ip address types
# Network address
- identifier for a group of devices
- also called "Network prefix"
- all 0s in the host portion of IP address

- Broadcast Address
- identifier for all devices on a network
- all 1s in the host portion of IP address
-

- Host address
- identifies unique device on a network
- Anything except all 1s or all 1s in the host portion

## Classful addressing
- Originally, IP addresses were assigned in four major address classes, A through D.
- Each of these classes allocates one portion of the 32-bit IP address format to identify a network gateway:
  - the first 8 bits for class A,
  - the first 16 for class B,
  - the first 24 for class C.
- The remainder identify hosts on that network:
  - more than 16 million in class A,
  - 65,535 in class B
  - 254 in class C.
  - Class D addresses identify multicast domains
The problem would commonly occur when an organization required more than 254 host machines and therefore would no longer fall into class C but rather class B.
This means that the organization would use a class B license even though they had far less than 65,535 hosts. The inflexibility of the class system accelerated IPv4 address pool exhaustion.

## CIDR: Classless Inter Domain Routing
- CIDR reduced the problem of wasted address (problem of Classful addressing) space by providing a new and more flexible way to specify network addresses in routers.
- CIDR is based on variable-length subnet masking (VLSM). This allows it to define prefixes of arbitrary lengths making it much more efficient than the old system.
- CIDR IP address are composed of two set of numbers: <network adress>/<number_of_bits>
- 192.255.255.255/12 : first 12 bits are network part of the address while the last 20 bits are for host address.

CIDR is now the routing system used by virtually all gateway routers on the Internet's backbone network.

Subnet mask: 255.255.255.0
binary: 11111111 11111111 11111111 00000000
24 1s
CIRD notaion:  /24

## Private IP Addresses
10.0.0.0 - 10.255.255.255   - CIDR: 10.0.0.0/8
172.16.0.0 - 172.31.266.255 - CIDR: 172.16.0.0/12
192.168.0.0 - 192.168.255.255 - CIDR: 192.168.0.0/16


127.0.0.1: Loopback address - for testing in your local system


