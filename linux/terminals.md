# Terminals

- [terminal_shortcuts](./terminal_shortcuts.md)
- [terminal_history](./terminal_history.md)
- [terminal_substitution](terminal_substitution.md)

## terminal emulators
A terminal emulator allows a user to interact with a shell from within Xorg.

- [urxvt](./urxvt.md)
- [simple-terminal st](./st.md)
- termite
- Quake
terminals that slide down from the top of the screen
  - Yakuake for KDE
  - Guake for GTK+
  - Tilda (tilde key summoned terminal)


## terminal sessions
- Terminator
Enables user to tile sessions in all manner of wild configurations
- tmux : terminal multiplexer
- screen : terminal multiplexer



## themes
- http://terminal.sexy
- http://xcolors.net
- http://dotshare.it/category/terms/colors/

## globbing vs regexps
- rename -n 's/(.*)/new$1/' *
While globs and regexps can look similar, they are not the same.
The first is ignored by the shell (because it is in quotes), and is
interpreted as ‘0 or more characters’ by the rename application. So it’s
interpreted as a regular expression.
The second is interpreted by the shell (because it is not in quotes), and
gets replaced by a list of all the files in the current working folder. It is
interpreted as a glob.
e.g: ls *  and ls .*







- command1; sleep; command 2
separate multiple commands with semicolon to have them run in sequence

- Ctrl + R
start typing a command you previously used, and shell will show you the most
recent match

- !!
will run the previous command. So if you forgot to sudo in last command, just
use sudo !!

- command1 && command2
The && operator looks at the return code of the first command and only
proceeds with the next command if it exited successfully
For the opposite effect ue ||, the second command runs only if first fails

- script
Everyting you type and its output will be recorded to a file. Press Ctrl+D
when you're finished and a file called typescript will contain a copy of
everything you did


- echo sometext | sudo tee -a somefile
if, sudo echo sometext >>somefile fails as permission is missing on somefile
(only echo is sudo, redirection is running as your user)

- #!/bin/sh
at the top of .sh file


