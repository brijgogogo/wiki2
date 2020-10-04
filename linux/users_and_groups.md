# Linux Users & Groups

## Users
- w
see who is logged in and what they are doing
-i to see ip address
- last
list of last users logged in
login history is contained in a text file at ~/.bash_history
- history
command history is contained in the ~/.bash_history

`useradd -m -G wheel -s /bin/bash user_name` : create new user
`passwd user_name`  : set password

`pacman -S sudo`
`/etc/sudoers`  : sudo config file
`%wheel ALL=(ALL) ALL`  : line to uncomment in sudoers config file to enable
sudo for wheel group


## groups
- groups : list groups the current user is in
- groups username
- passwd : set your own password
- passwd username : set another user's password
- groupadd <group_name>
- usermod -a -G <group_name> <user_name>
- usermod -g <primary_group> <user_name>
change user's primary group
- id
see id of groups


- useradd <username> : add a user
- userdel <username> : remove a user
- userdel -r <username> : remove user and its home folder


## Permissions
- ls -la : list files with user permission
<d/->rwxrwxr--
d: directory or - : file
r: read
w: write
x: execute
-: no premission

first character is directory or file indication
next 3 characters: user's permission
next 3 chracters: group's permission
next 3 characters: all others

- chmod 777 file  : change permissions
1st number: user
2nd number: group
3rd number: others
r: 4
w: 2
x: 1

- chmod <who>=<permissions> <filename>
who:
u: user who owns the file
g: group the file belongs to
o: other users
a: all of the above
permissions: r, w, x
- chmod o=r file.ext
others will have only read permission
- chmod g= file.ext
take away all permission of group
- chmod og=rw file.ext
grant read and write for everyone
- chmod go-w file.ext
take away write permission for group and others
- chmod a+wx file.txt
grant write and execute to all
- chmod ug=o file.ext
u and g will be assigned permissions of others
- chmod u+s summarize
-rwsr-xr-x steve sales summarize
-rw------- steve sales customer.dat

when any user other than steve executes summarize file, they will have permission to execute it. During execution summarize tries to access customer.data, steve's user id will be used to access it.
(http://catcode.com/teachmod/setuid.html)
- chmod 754 file.ext

## owernership
- chown root /u
Change the owner of /u to "root".
- chown root:staff /u
Likewise, but also change its group to "staff".
Here root:staff is user:group (seen from ls -la)
- chown -hR root /u
Change the owner of /u and subfiles to "root".
- chown :<group> <file>
change only group



- sudo su
Become super user

