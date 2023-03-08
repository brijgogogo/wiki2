# osi
Open Systems Interconnect
- 7 distinct functions that a network must do.
- OSI model is being supplanted by TCP/IP model.

## Layers
7. Application
6. Presentation
5. Session
4. Transport
3. Network
2. Data Link
1. Physical


## Physical Layer
what cables are being used:
- Twisted
- coax
- copper
- fiber optics
- wireless

## Data Link Layer
- works with mac address, network card, switches,
- move data between one device to other device
-  protocols:
  - Wired Ethernet
  - Wirelss Ethernet
  - DOCSIS-3


## Network Layer
Deals with Logical addressing, Routers
- IP Addressing: provides a unique address for all the devices on the internet
- IP Routing: allows us to send messages from one unique address to any other unique address

## Transport Layer
Dis/Assembles data packets and makes sure they reach the other end in good order.
Transmission Control Protocol
builds session between client and server

## Session Layer
Actual connection between 2 servers, could be TCP connection, email, folder share, Citrix ICA protocol, FTP, etc.

## Presentation Layer
Convert data into a format that your applications can read.
ASCII

Presentation Layer and Session Layer are sometimes considered part of Application Layer. They do not get used in every protocol/communication.

## Application Layer
Things in application which are network aware (api, etc)
- Hypertext Transfer Protocol (http)
  transfer website from server to client



