# HTTP
Hypertext Transfer Protocol
- Rules (protocol) for exchanging files on the Web.

## TCP
- Ensures integrity of network communication
- Breaks files/messages into individual units called packets
- Packets contain information such as the destination, source, sequence number, and checksum values used to verify the integrity of the data.

## IP
- TCP is used together with IP to transmit files efficiently over the internet.
- IP routes a packet to the correct destination address.
- IP takes over after TCP creates the packets, using IP addressing to send each packet over the internet
- When the destination address is reached, TCP verifies the integrity of each packet using the checksum, requests resend if a packet is damaged, reassembles the file or message form the multiple packets.

## IP Addresses
- Device identifying number
- IPv4: 32-bit: consists set of 4 groups of numbers called octects
- IP address may corresponds to a domain name (Domain Name System)
- IPv6: 128-bits (backward compatible with IPv4)
- HTTPS: HTTP Security: HTTP + Secure Sockets Layer (encryption protocol)

## URIs & URLs
Uniform Resource Identifier idenfiers a resource on the internet.
Uniform Resource Locator is a type of URI, represents network location of a resource.
URL consists of protocol, domain name, and hierarchical location of the file on the web server


## Top-Level Domain Names
Rightmost part of the domian, such as com for commercial or fr for France.

## HTTP/2
Update to HTTP
- Quicker loading of web pages
