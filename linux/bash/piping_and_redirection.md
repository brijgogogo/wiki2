# redirection

Every command automatically has three data streams connected to it:
- STDIN (0) - Standard input (data fed into the program)
- STDOUT (1) - Standard output (data printed by the program, defaults to the terminal)
- STDERR (2) - Standard error (for error messages, also defaults to the terminal)

examples of redirection operators:
ls -la > files.txt : sends the STDOUT of a command to a file. This will overwrite the file if it already exists
ls -la >> files.txt : this will append
ls -l 2> /dev/null : redirect STDERR
ls -l &> /dev/null : redirect both STDOUT and STDERR
wc -l < file.txt : redirects contents of a file back into the command (i.e. provide it as an input)
du / > output_file 2>&1 : redirect both STDERR and STDOUT output to the same file

cmd >| file : overwrites the file, even if the shell has this feature turned off.
cmd1 >& cmd2 : redirect both STDERR and STDIN from cmd1 into cmd2
cmd <> file : opens a file for reading and writing on STDIN

Tip: By redirecting the output to /dev/null  nothing will be display on the console. The device /dev/null  can be thought of as a type of black hole, that has infinite size but nothing can be retrieved from it.

# piping
Piping redirects the output from one command and sends it to another command for processing.
example:
ls -la | less

