# OpenSSH
ssh server for Linux, Unix

## host keys
- stored in the /etc/ssh directory
- files starting with ssh_host_<rsa/dsa/ecdsa/ed25519>_key
- generated automatically when OpenSSH is first installed or when the computer is first booted.
- ssh-keygen program can be used for generating additional host keys or for replacing existing keys.

SSH clients store host keys for hosts they have ever connected to. These stored host keys are called known host keys, and the collection is often called known hosts. In OpenSSH, the collection of known host keys is stored in /etc/ssh/known_hosts and in ~/.ssh/known_hosts.

## ssh-keygen
Ssh-keygen is a tool for creating new authentication key pairs for SSH. Such key pairs are used for automating logins, single sign-on, and for authenticating hosts.

$ ssh-keygen
generates ssh keys

SSH keys for user authentication are usually stored in ~/.ssh directory

## passphrase
The passphrase is used for encrypting the key, so that it cannot be used even if someone obtains the private key file.


## copy key to server
To use public key authentication, the public key must be copied to a server and installed in an authorized_keys file. This can be conveniently done using the ssh-copy-id tool.
$ ssh-copy-id -i ~/.ssh/ssh.file user@host

- [ssh-command](./ssh_command.md)
- [sshd](./sshd.md)
- [scp-command](./scp_command.md)






## sources
https://www.ssh.com/ssh/keygen/




