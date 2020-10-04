# console
The Linux console provides a way for the kernel and other processes to send text output to the user, and to receive text input from the user.

Console is part of Linux kernel
Terminal emulation software (like xterm) is implemented in user space.

## Virtual Console
console is presented to user as series of virtual consoles
/dev/ttyX (X = 1, 2, 3)
Switch by Alt + FX
/dev/console is set to active virtual console

## shortcuts
Ctrl+Alt+Del : reboot
Alt left/right arrow: go to previsou or next virtual console
Alt + lX :switch to numbered virtual console
Shift+PgUp/PgDown Scrolls console buffer up/down
Ctrl+c Kills current task
Ctrl+d Inserts an EOF
Ctrl+z Pauses current Task


## sources
https://wiki.archlinux.org/index.php/Linux_console
https://en.wikipedia.org/wiki/Virtual_console
