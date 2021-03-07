# Template Directives
  * provide insructions to text template engine
  * should be the first elements in the template file
  * Syntax: <#@ DirectiveName [Attribute="Value"] #>

## Template Directive
 * language: specifies template language (VB, C#, C#v3.5)
 * debug: (true/false)
 * hostspecific: determines access to the template's host
 *  inherits: inherits from class (default:Microsoft.VisualStudio.TextTemplating)

## Output Directive
 * extension
 * encoding  (utf-8, utf-16, us-ascii)

## Assembly Directive
 * References an assembly for use in the template
 * <#@ AssemblyName="path/to/my.dll" #>
 * <#@ AssemblyName="my.dll" #>
 * <#@ AssemblyName="$(SolutionDir)\References\my.dll" #>
 * <#@ AssemblyName="System.Xml" #>
 * <#@ AssemblyName="System.Xml, Version=4.0.0.0,Culture=..." #>
 * <#@ assembly name="$(TargetDir)\my.dll" #>

<#@ assembly name="System.Data" #>

<#
  System.Data.SqlClient.SqlConnection con = new
  System.Data.SqlClient.SqlConnection("");
#>

## Import Directive
* Same as using/import in C#/VB

<#@ assembly name="System.Data" #>
<#@ import namespace="System.Data.SqlClient" #>

<#
  SqlConnection con = new SqlConnection("");
#>


## Include directive
* includes blocks from external templates
* <#@ include file="c:\file.tt" #>
* <#@ include file="..\folder\file.tt" #>
* included file do not contain template/output directive.


