# T4 Building Blocks

## Expression Blocks
* Used inline within text blocks
* Provides computed result of the containing expression
* Syntax: <#= Expression #>
* Does not require ;

e.g.
Date is <#= DateTime.Now.ToString() #>

## Statement blocks
* statements when template is executed
* variables, loops, control logic
* cannot contain method, class, or other structural definitions
* Syntax: <# Logic #>
* Can contain text blocks and expression blocks

<#

DateTime dt = DateTime.Now;

for(int i = 0; i < 10; i++) {
  dt.AddYears(i);
}
#>

Date is <#= dt.ToString() #>


## Class feature blocks
* Hold reusable blocks of code callable by statemetn and expression blocks
* Can contain methods, classes, fields, properties, constants
* Syntax: <#+ Logic #>
* Must be at the bottom of templates
* Can contain text, expression blocks

Date is <#= GetDay(2018).ToString() #>

<#+
private sring GetDay(int year) {
  return DateTime.Now;
}
#>

