# Linux Processes

## running process in background
- idea.sh &
to start application in background append ampersand [&] to the command:

If you already started the application, press [Ctrl]+[z] in terminal to suspend the application. To allow it to continue running without displahing standard output, type [bg] and press [Enter]. This is referred to as running the application in background.

## searching process
- ps l
see all running processes
- ps aux
list running processes
number listed in second column is PID
- ps auxf
- ps aux | grep firefox
search processes with firefox text
- pgrep firefox
returns PID of firefox process ordered chronologically
- ps aux | sort -nk +4 | tail
display top 10 running processes sorted by memory usage
sorted by 4th field of output returned by ps
- use top/htop to see resource usage
- ps -aux | grep -v `whoami` : see all processes that are run by you

## killing process
- kill [PID]
kill a process by process id
Without options, kill sends SIGTERM to the PID specified and asks the application or service to shut itself down.
The following examples all send the SIGKILL signal to the PID specified:
kill -s KILL [PID]
kill -KILL [PID]

- killall [process_name]
will kill all programs with given name
Without additional arguments, killall sends SIGTERM, or signal number 15, which terminates running processes that match the name specified. You may specify a different signal using the -s option as follows:
- killall -s 9 [process name]
This sends the SIGKILL signal which is more successful at ending a particularly unruly processes. You may also specify signals in one of the following formats:
- killall -KILL [process name]
- killall -SIGKILL [process name]
- killall -9 [process name]
- killall -w irssi
Adding the -w option to a killall command causes killall to wait until the process terminates before exiting.

## System Signals
The kill command does not terminate a process directly. Rather, a signal is sent to the process where the process will have instructions to follow if it receives a given signal. The man pages provide further reference of all available signals:
man 7 signal

To simply list all available signals without their descriptions:
- kill -l
- killall -l

If you need to convert a signal name into a signal number, or a signal number into a signal name, use the following as examples:
- kill -l 9
KILL
- kill -l kill
9



- kill -HUP
reload process
can be used with killall as well


- lsof | grep fileName
to see which process is using a file

- pgrep nvim
Returns list of PID of a process
add -a or -f to see more detail

- strace -p PID
shows all the system call that the process is making
- lsof -p PID
list the open files that the process has
- kill 1234
- killall -v process
- kill -9 1234
kills the process by PID

- killall firefox
kills all firefox processes

- renice : alter priority of a process
It can assign a priority value between -20 and 19. The lower the number, the higher the priority.
renice 15 8899 : here 8899 is PID


## pstree
- pstree
list running processes in a tree (parent-child relationship) to see which process started other processes
- pstre -p
show pids
- pstree -np
sort by pid
- pstree user_name
show processes spawned by a user
- pstree -s 780
see parents of a proess you specify

