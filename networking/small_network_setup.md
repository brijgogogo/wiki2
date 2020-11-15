# small network setup
1. Draytek Vigor 2925 Dual-WAN Router Firewall
Dual WAN ports means you can connect to two providers for increased bandwidth
and a failsafe connection.
2. FRITZ!Box 3490
Modem which offers dual wireless networks, which is ideal for giving guest access.
3. Zyxei GS2210-24LP
A basic network-switch simply routes traffic to the right device.
4. Zyxel 802.11ac Dual-Radio Ceiling Mount PoE Access Point
If you need to provide extra wireless access points.

Typical Physical Network
---------------------------

Internet
  ^
  |
  |
  V
Modem
  ^
  |
  |
  V
--------- <-----> Access Point
|       | <-----> Guest Access Point (VLAN)
| Router| <-----> Public Server (DMZ) (for mail, web)
|       | <-----> Computer
--------- <-----> Server
  ^
  |
  |
  V
---------- <-----> Access Point
|        | <-----> Computer
| Switch | <-----> Computer
|        |
----------


* Server: PowerEdge T30 mini Tower server (Dell)
You don't need fancy graphics hardware - what important is CPU power, storage
space and, especially, plenty of memory.

Normally you want to restrict access fro outside your network to a minumum, but
what if you want a publicly accessible server for, say, mail or web ? If someone
were able to compromise that server, they could access the whole of your
network. The solution is a `DMZ` (from the term 'de-mitarized zone'). A DMZ is a
separate segment of your network that is open to the internet and to the local
network, but does not have access back into your network. If a computer in the
DMZ is compromised, the harm is limited to that machine and any others on the
same DMZ.

Another type of segment is a virtual LAN or `VLAN`. It is virtual because,
although it behaves as a separate network segment, it uses the same physical
network. A VLAN can be used to isolate part of the local network from the rest,
for eacmple, to allow guests to use your network to connect to the interne
without being able to access your computers.

Most routes have a decent firewall built in, or you can run a dedicated
firewall between your modem and the rest of the network.

`PoE`: Power over ethernet - where devices can receive power as well as data
from a suitable switch.

Wiring: category 5e and category 6 (generate known as Cat53 and Cat6). Both are
capable of handling gigabit speeds and PoE. Cat6 has maximum length of 55m, but
Cat6a restores this to 100m,

If connectivity is critical, you should consider a backup option. Some routers
have an option to adda USB 4G dongle as a fallback, or you coudl go the whole
hog and have two internet connections with a load-balancing router that uses
both at once.

Once you have more than one device on a network, you need them to be able to
talk to one another. That means you need to be able to give each host an IP
address and let it know the IP addresses of the other hosts. This can be done
manually by giving each device a static address and adding it to the hosts
file of each of the other devices, but this soon gets out of hand - and what
happens when a guest wants to connect their phone to your wireless network ?

The solutions are `DHCP` and `DNS`. A DHCP serer will allocate an address to
any device that requests one, along with other information such as the gateway
and DNS addresses. The DNS server converts hostnames to IP addresses. On most
networks it is best to use a forwarding server for this. It passes the request
to a server on the internet and passes the result back, remembering it for the
next time. Most routers have DNS forwarding and DHCP services built in, but
you can get more control if you run your own, with dnsmasq being the preferred
choice for many. Some routers, especially those that run a version of DD-WRT,
use dnsmasq by default.



