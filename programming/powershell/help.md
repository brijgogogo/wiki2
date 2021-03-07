# help
* Get-Help Get-Service
* Get-Service -?
gets help for cmdlet

* Get-Help -Category Cmdlet
To get a list of all the cmdlet Help articles in your session

* man Get-ChildItem or help Get-ChildItem
to display one page of `Help` article at a time

* Get-Help Get-ChildItem -Detailed
detailed information
* Get-Help Get-ChildItem -Full
detailed information

* Get-Help Get-ChildItem -Paramter *
show help of all parameter

* Get-Help Get-ChildItem -Examples
display only examples form Help article

* Get-Help about_*
list conceptual articles
* Get-Help about_command_syntax

* Get-Help registry
get help on registry provider
* Get-Help -Category provider
get list of all the provider Help articles

* Get-Help Disable-PSRemoting
get help on function Disable-PSRemoting

* Get-Help C:\scripts\script.ps1
get help on script

* Get-Help Get-ChildItem -Online
get online version of Help article

* update-help
to download help files form internet
* help Get-Service
* HELP **log**
search help using wildcards
* HELP Get-EventLog -full
* Get-Service | Get-Member
* HELP Get-EventLog
* HELP **log**
in help, optional parameters are in square brackets []
If only parameter name (and not type) is enclosed in square brackets, it is positional parameter (meaning you need not name it while calling command)

== discoverability ==
* Get-Command *-Service
find list of cmdlets that view and change Windows services


== sources ==
https://docs.microsoft.com/en-us/powershell/developer/help/writing-help-for-windows-powershell-cmdlets

