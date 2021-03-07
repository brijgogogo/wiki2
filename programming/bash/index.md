# Bash
Bash (which stands for Bourne again Shell) is the name of the shell program that interprets our text input and converts it into commands for the computer to run.

* The prompt is what Bash uses to signal that it is waiting for your next command.


* Multi-line execution
For readability sake, users can separate a length command into multiple lines by appending a backslash after each line
user@host:~$ mkdir -p January February March April \
May June July August September October November \
December

* Multiple commands per line
For readability sake, users can use semicolons to indicate the end of a command within a single line. This allows the user to list and execute multiple commands upon hitting Enter:
user@host:~$ mkdir -p January; mkdir -p December

* Multiple conditional commands per line
The use of double-ampersands between commands will also allow the execution of multiple commands in a single line. However, unlike semicolons, if the first command fails, the second command will not run:
user@host:~$ cd some_directory_that_may_exist && rm -f *

* Literal text strings with quotes
The use of quotes (single or double) allows the user to enclose a text string as a literal value. For example, the following will create a single directory named 'Documents and Settings'
user@host:~$ mkdir 'Documents and Settings'
Without quotes, the same command would create three directories: Documents, and, and Settings
user@host:~$ mkdir Documents and Settings

However, if a double-quoted string encloses a special character, such as the dollar-sign that denotes a variable, the shell will expand the variable to its value:

user@host:~$ some_number=42
user@host:~$ echo 'There are $s bottles of beer'
There are $some_number bottles of beer
user@host:~$ echo "There are $some_number bottles of beer"
There are 42 bottles of beer


* [read_command](read_command)
* [echo_command](echo_command)
* [integer_arithmetic](integer_arithmetic)
* [error_levels](error_levels)


- case sensitive

- when we execute a script from a bash shell, it runs in a new process

## shebang
#!/bin/bash
- first line of the script
#! - shebang
/bin/bash : path to the interpreter (program) that should be used to run (or interpret) the rest of the lines in the file
- There must be no spaces before the # or between ! and path of the interpreter.
- You can ommit shebang line, but it is good to include as the script may be called from elsewhere as well
- bash script.sh : run bash by passing script as arugment

## comments
# comments

## calling script
./script.sh
When you just type a name of the command, Bash tries to find it in a series of directories stored in a variable called $PATH (separated by : ). It doesn't consider sub directories or your current directory. So you need to put "./" to execute the script in your dir.

- calling other script
./another_script.sh

* [variables](variables)
* [functions](functions)

 ## test command
test EXPRESSION
[ EXPRESSION ]
[[ EXPRESSION ]]

FILE operators:
- -e : checks whether file exists regardless of the type
- -f : returns true only if the file ia a regular file (not a directory or a device)
- -d : checks whether a file is a directory or not
- -x: file exists and is executable
- -w: file exists and is writable

e.g:
FILE=/etc/resolv.conf
if [ -f "$FILE" ]; then
	echo "$FILE exist"
fi

# file does not exists
if [ ! -f "$FILE" ]; then
   ....
fi

- -a : check multiple conditions
if [ -f /file1 -a -f /file2 ]; then
fi

if [ -f /file1 && -f /file2 ]; then
fi

## common checks
if [ -d "$directory" ]; then
  # if directory exists
fi

if [ ! -d "$directory" ]; then
  # if directory doesn't exists
fi


if [ -L "$link" ]; then
  # if symlink
fi


if [ -z ${var+x} ]; then
  # var is unset
fi


## exiting
exit [n]
cause the shell to exit with a status of n
If n is omitted, the exit status is that of the last command executed.





## sources
http://www.compciv.org/bash-guide/

