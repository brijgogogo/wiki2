# ssh
Secure Shell (SSH)

The SSH protocol uses encryption to secure the connection between a client and a server. All user authentication, commands, output, and file transfers are encrypted to protect against attacks in the network.

- runs on port 22

## how
- client/server model
- ssh client initiates connection with ssh server
- ssh server authenticates itself to the client by providing its public key
- ssh client verifies the key
- ssh server provides client access to host system (goverend by user account permission)


## ssh clients
SSH client is a program that allows establishing a secure and authenticated SSH connections to SSH servers.
examples:
- PuTTY (SSH, Telnet, and [SFTP](./sftp.md) client for Windows)
- WinSCP (ftp, sftp, scp, file manager, scripting)
- FileZilla (file transfer client)
- Chrome SSH (chrome extension)

## ssh servers
- [OpenSSH](./openssh.md)
- Tectia (SSH Client and Server for Linux, Windiows, Unix)

## ssh-agent
The ssh-agent is a helper program that keeps track of user's identity keys and their passphrases. The agent can then use the keys to log into other servers without having the user type in a password or passphrase again. This implements a form of single sign-on (SSO).

## ssh keys
A host key authenticates servers, and an identity key serves as an authentication credential for a user. Together they are called SSH keys.

 Public host keys are stored on and/or distributed to SSH clients, and private keys are stored on SSH servers.

## host certificates
 Some SSH implementations support using certificates for authenticating hosts.

## file transfer
- [sftp](./sftp.md)

## ssh tunneling / ssh port forwarding
The application data traffic is directed to flow inside an encrypted SSH connection.
With tunneling enabled, the application contacts to a port on the local host that the SSH client listens on. The SSH client then forwards the application over its encrypted tunnel to the server. The server then connects to the actual application server - usually on the same machine or in the same data center as the SSH server.


## sources
https://www.ssh.com/ssh/
https://www.ssh.com/ssh/putty/download



