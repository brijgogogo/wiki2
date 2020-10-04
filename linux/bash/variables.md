# variables
A storage location that has a name and a value.
Can affect how applications are executed
Are case sensitive.
Are uppercase by convention

## viewing
* printenv : to view all environment variables
* printevn HOME : get value of an environment variable
* echo $HOME : same as above
* echo ${!S*} : enumerate variables that begin with letter S

## creating
* export VAR="value"
no space around =
if it already exists, its value will be overwritten


## removing
* unset VAR

## persisting
add the export command to initialization file like ~/.bash_profile

## common variables
* USER : current user name
* export TZ="US/Pacific" : changes your time as per specified timezone
date command uses TZ environment variable, see ENVIRONMENT section in man page
* PATH : command at prompt are searched at the directories listed in this variable
* $OLDPWD

## variable expansion
Variable expansion is when a command is executed it replaces the variable name
with the value it contains.

example:
echo $SHELL
