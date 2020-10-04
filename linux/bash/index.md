# bash
Bourne again Shell
Bash shell / Bourne-again shell - Brian Fox - 1989
It was initially written as a replacement for the Bourne shell.
Bash is the name of the shell program that interprets our text input and converts it into commands for the computer to run.
The prompt is what Bash uses to signal that it is waiting for your next command.


- /usr/bin/bash
- chsh -s /bin/bash.
- ~/.bashrc : configuration settings
- set -o vi
enable vi mode

- Multi-line execution
For readability sake, users can separate a length command into multiple lines by appending a backslash after each line
user@host:~$ mkdir -p January February March April \
May June July August September October November \
December

- Multiple commands per line
For readability sake, users can use semicolons to indicate the end of a command within a single line. This allows the user to list and execute multiple commands upon hitting Enter:
user@host:~$ mkdir -p January; mkdir -p December

- Multiple conditional commands per line
The use of double-ampersands between commands will also allow the execution of multiple commands in a single line. However, unlike semicolons, if the first command fails, the second command will not run:
user@host:~$ cd some_directory_that_may_exist && rm -f *

- Literal text strings with quotes
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


- [variables](./variables.md)
- [aliases](./aliases.md)
- [bashrc_vs_bash_profile](./bashrc_vs_bash_profile.md)
- [piping_and_redirection](./piping_and_redirection.md)
- [command_substitution](./command_substitution.md)
- [command_pearls](./command_pearls.md)
- [shell_prompt](./shell_prompt.md)
- [commands_and_functions](./commands_and_functions.md)



## read input
http://linuxcommand.org/lc3_man_pages/readh.html

- reading input from user
#!/bin/bash

echo -n "Enter some text > "
read text
echo "You entered: $text"

-n tells echo not to output a linefeed at the end of the prompt read command reads the input from user followed by carriage return
and assigns whatever was types to variable text
If you don't give the read command the name of a variable to assign its input, it will use the environment variable REPLY.

- read timeout
#!/bin/bash

echo -n "Hurry up and type something! > "
if read -t 3 response; then
    echo "Great, you made it in time!"
else
    echo "Sorry, you are too slow!"
fi

read -t 3 (timeout after 3 seconds)

- hide user's input
read -s

- read with prompt
read -p "do you wish to proceed (y/n): "
-p prompt	(output the string PROMPT without a trailing newline before
attempting to read)

- read only n characters
-n nchars	(return after reading NCHARS characters rather than waiting for a
newline, but honor a delimiter if fewer than NCHARS characters are read
before the delimiter)

- backslash
-r		do not allow backslashes to escape any characters


## echo
- -e
enable interpretation of backslash escapes
- -n
do not output trailing new line



## Integer arithmetic
echo $((2+2))
when you surround an arithmetic expression with the double parentheses, the shell will perform arithmetic expansion.

#!/bin/bash

first_num=0
second_num=0

echo -n "Enter the first number --> "
read first_num
echo -n "Enter the second number -> "
read second_num

echo "first number + second number = $((first_num + second_num))"
echo "first number - second number = $((first_num - second_num))"
echo "first number * second number = $((first_num * second_num))"
echo "first number / second number = $((first_num / second_num))"
echo "first number % second number = $((first_num % second_num))"
echo "first number raised to the"
echo "power of the second number   = $((first_num ** second_num))"


## history
* ~/.bash_history:  contains commands you typed
* !# : replace # with number of command you want to run
* history -r : clear current session history
* !! : re-execute last command
* !!:p : echo last command
* !?<search_string> : execution last command matching search string, like !?echo
* !$ : reuse options from the last command, like ls /bin, then cd !$
* !:- : last command without the last argument
* C-R : reverse search history, C-C to cancel
* echo "!!" > script_file.sh : save last long command that wan run into a script
* Esc + . : inserts last argument of last command
* Esc + * : inserts the auto-completion command line results


## tips
* Alt + .
Insert the last parameter(s) of the preceding command in your current command
* When executing a script with bash, use the -x option to output the script contents as it's being executed

* sleep 5
pauses for 5 seconds

## sources
http://www.compciv.org/bash-guide/
