# commands and functions


- command1;command2;command3 : run multiple commands in a single line
- command1 && command2 : run next command if the first command is successful
- command1 || command2 : run next command if the first one fails
- y | some_command : automatically answer a prompt, pipe in the response

## functions
function show() { echo "hello"; }

The $@  is a pseudo variable, that contains the first argument passed to the function.

