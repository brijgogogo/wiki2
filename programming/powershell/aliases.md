# alias
an alias is a nickname for a command
Most cmd.exe and Unix commands have aliases.


* Get-Alias
show list of aliases
* Get-Alias cls
shows real command for cls alias
> get-alias -Definition "Get-Service"
> gsv
> help gsv
> New-Alias
> Export-Alias
> Import-Alias


= creating new aliases =
Set-Alias -Name gi -Value Get-Item
Set-Alias -Name si -Value Set-Item
Set-Alias -Name gl -Value Get-Location
Set-Alias -Name sl -Value Set-Location
Set-Alias -Name gcm -Value Get-Command


== examples ==
* pwd
Get-Location
* cls
Clear-Host


