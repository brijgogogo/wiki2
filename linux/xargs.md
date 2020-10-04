# xargs
reads items from the standard input, delimited by blanks or new lines, and executes the command (default echo) followed by items read.

- -0, --null : input items are terminated by a null character (like -print0 in find command)
- -a <file>, --arg-file=<file> : read items form file
- --delimiter=<delim>, -d <delim> : custom delimiter like \n
- -n <mar-args>, --max-args=<max-args> : use at most max-args arguments per command line
- -P4 : 4 simultaneous xargs processes
- -t : print each command prior to execution
- -p : print each command and ask to execute it
- -x : quit if number of arguments does not fit into command line length

example:
find /tmp -name core -type f -print | xargs /bin/rm -f

