# cmdlets
cmdlet (pronounced "command-let"), a simple, single-function command-line tool built into the shell.

cmdlets follow verb-noun pattern in their names.
* Get-Verb
to see allowed verbs.
* Get-Command -Verb Get
see all cmdlets that use the verb Get
* Get-Command -Noun Service
to see commands available for managing services


== examples ==
* Get-Date
get system date
* Clear-Host
clears console (like cls)
* Get-Content
reads the contents of a file
* Get-ChildItem /home
get child folders
* Show-Command Get-EventLog
run command using gui
* Test-Connection google.com
works like ping


== parameters ==
Parameters are passed by name using `-ParamName value` or by position

* -? parameter displays the help for cmdlet

* Get-EventLog Security -computer server-R2,DC4,Files02
Powershell treats comma separated values as array
If values contain space, then it must be enclosed in quotations (single or double)

* Get-EventLog Security -computer (Get-Content names.txt)
get parameter values from a file containing a value per line

* Get-EventLog -comp abc
No need to type full parameter name, type enough to distinguish
Parameters can also have aliases for example -ComputerName has aslias -Cn

* PowerShell has several common parameters. These parameters are controlled by the PowerShell engine. Common parameters always behave the same way. The common parameters are WhatIf, Confirm, Verbose, Debug, Warn, ErrorAction, ErrorVariable, OutVariable, and OutBuffer.

