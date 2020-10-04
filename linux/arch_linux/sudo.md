# sudo

- pacman -S sudo
- EDITOR=vim visudo
uncomment below line
%wheel ALL=(ALL) ALL

add user to "wheel" group

## format of sudoer file
- root ALL=(ALL) ALL
This line means: The root user can execute from ALL terminals, acting as ALL (any) users, and run ALL (any) command.
user termial= (users which he may act as) commands

- operator ALL= /sbin/poweroff
user operator can from any terminal, run the command power off

## aliaes
You can also create aliases for:
- users -> User_Alias,
- run commands as other users -> Runas_Alias,
- host -> Host_Alias
- command -> Cmnd_Alias

- User_Alias OPERATORS = joe, mike, jude
alias OPERATORS include joe, mike and jude
- Runas_Alias OP = root, operator
- Host_Alias OFNET = 10.1.2.0/255.255.255.0
alias OFNET includes the network 10.1.2.0 (all the C class)
- Cmnd_Alias PRINTING = /usr/sbin/lpc, /usr/bin/lprm


## examples
- user2 OFNET=(ALL) ALL
user user2 may run any command from any machine in the
OFNET network, as any user.
- go2linux ALL=(ALL) ALL
user go2linux may run any command from any machine acting
 as any user
- user3 ALL= PRINTING
user user3 may run lpc and lprm from any machine.



## askpass
If you want not to be asked for a password use this form:
go2linux ALL=(ALL) NOPASSWD: ALL
vik ALL =(ALL) NOPASSWD: /usr/bin/iw, /usr/bin/pacman




## source
https://www.garron.me/en/linux/visudo-command-sudoers-file-sudo-default-editor.html
https://wiki.archlinux.org/index.php/Sudo
