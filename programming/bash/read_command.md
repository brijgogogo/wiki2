# read
%% http://linuxcommand.org/lc3_man_pages/readh.html

* reading input from user
#!/bin/bash

echo -n "Enter some text > "
read text
echo "You entered: $text"

%% -n tells echo not to output a linefeed at the end of the prompt
%% read command reads the input from user followed by carriage return
%% and assigns whatever was types to variable text
%% If you don't give the read command the name of a variable to assign its
%% input, it will use the environment variable REPLY.

* read timeout
#!/bin/bash

echo -n "Hurry up and type something! > "
if read -t 3 response; then
    echo "Great, you made it in time!"
else
    echo "Sorry, you are too slow!"
fi

%% read -t 3 (timeout after 3 seconds)

* hide user's input
%% read -s

* read with prompt
%% read -p "do you wish to proceed (y/n): "
%% -p prompt	(output the string PROMPT without a trailing newline before
%% attempting to read)

* read only n characters
%% -n nchars	(return after reading NCHARS characters rather than waiting for a
%% newline, but honor a delimiter if fewer than NCHARS characters are read
%% before the delimiter)

* backslash
%% -r		do not allow backslashes to escape any characters

