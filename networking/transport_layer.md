# Transport Layer - Protocols
- Transmission Control Protocol - TCP
- User Datagram Protocol - UDP

## Transmission Control Protocol - TCP
- connection-aware - session set up with 3-way handshake
- reliable: confirmation of delivery of message
- uses sequence number and acknowledge number to verify data received

- 3-way handshake
1. Client sends SYN(chronize) message to server
2. Server sends SYN-ACK message to client
3. Client sends ACK message to server
Now we have a session established between client and server. Now we can use any application protocol like HTTP, where client asks server for a website.

- 4-way Disconnect
1. FIN message from server to client
2. FIN-ACK message from client to server
3. FIN message from client to server
4. FIN-ACK message from server to client
Now no requests (like http) can be sent.

- TCP-Reset - another way to disconnect
1. RST message from server to client
This prevents any further communication. This may be done by some firewall which suspects something is not right.


## User Datagram Protocol - UDP
- Connection-less - No session setup like 3-way handshake in TCP
- No reliable communication - no confirmation of server receiving the message
- No sequence numbers, no acknowledge numbers
- used for efficient/small data transfer
- e.g client asking a server about DNS and server giving the information to client

## Transport Layer addressing - Ports
At Transport Layer, ports are used to identify applicaiton layer protocls being used.

Source Port number comes from client
Destination Port number comes from server

Server usually has well-known/registered port numbers.
Client has ephemeral/temporary port numbers.

- Port Numbers - 0 - 65,535
Well-known: 0 - 1023
Registered: 1024 - 49,151
Ephemeral: 49,152 - 65,535


http: 80
pttps: 443
ftp: 20, 2
ssh: 22
telnet: 23

Custom Applications use Registered port numbers



