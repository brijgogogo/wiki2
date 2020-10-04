# Linux Graphics

## X Window System
The X Windows System is the standard basis for providing a graphical interface.

X has a client/server architecture. X itself runs as the server, maintaining the display. Client programs then communicate with the server telling it what to draw and where.

It uses local sockets to communicate between the clients and servers, so there is no significant performance hit. Once clear advantage of this method is that the client and server do not have to be running on the same server.


## Wayland
Some consider the client/sever architecture to be overly complex, so there are moves to develop more simple methods of running a graphical display. The mos advanced is Wayland.

In this, old client/server setup is gone. It leaves the rendering of windows and other display elements to the client applications, usually using OpenGL and Cairo.

- [arch_gui](./arch_linux/xorg.md)

