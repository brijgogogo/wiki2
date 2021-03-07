# syntax


# comments
<#
block comments
#>

variables
* $v = "value"
* $v = 1,2,3

clearing variable value
Clear-Variable -name $v
$v = $null


# delete variable
Remove-Variable -name variable_name
Remove-Item -path variable:\variable_name

* get-variable
list all variables

* call another script with parameters
$v1 = "value1"
$v2 = "value2"
Invoke-Expression -Command "C:\path\to\script.ps1 -param1 $v1 -param2 $v2"

