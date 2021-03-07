# variables
temporary store for values

- assign value: no space on either side of =
variable=value
- access value by prefixing $
echo $variable
- single quotes will treat every character literally
my_name='Brij Kishore'
- double quotes allows subtitution (include variables within the setting of value)
- my_full_name="$my_name Sharma"

## special variables
$0 - name of command/script
$[1..9] - first 9 arguments
$# - number of arguments
$@ - all the arguments
$? - exit status of the most recently run process
$$ - process ID of the current script
$USER - username of the user running the script
$HOSTNAME - hostname of the machine the script was started
$SECONDS - seconds since the script was started
$RANDOM - returns a different random number
$LINENO - returns the current line number in the script


## command substitution
take the output of a command or program (which would normally be printed to the screen) and save it as the value of a variable.
> mydt=$(date)
> echo $mydt

- If the output goes over several lines then the newlines are simply removed and all the output ends up on a single line.

## exporting variables
- variables are limited to the process they are created in
- if we want the variable to be available to the second script then we need to export the variable

export var1








