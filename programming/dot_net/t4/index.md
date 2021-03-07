# T4
Used for code generationl.
T4: Text, Template, Transformation, Toolkit
T4 is text based, works on templates which are transformed using toolkits
available in Visual Studio.


## Example
Example: on the top we have directives, then some text block, then control
logic
<#@ template debug="false" hostspecific="false" language="C#" #>
<#@ output extension=".txt" #>

Hello World,

The time is now <#= DateTime.Now.ToShortTimeString() #>
<#
    for(int i = 0; i < 10; i++)
    {
      WriteLine(i.ToString());
    }
#>


## Types of T4 Templates
* Design time : to generate code/files at design time
  Can use CodeDOM which can be used to read solutions, code, etc.
* Run time (preprocessed templates): executed via code
  Can be passed parameters. Generate assemblies. Can be executed outside of
  VS.


[t4_directives](t4_directives)
[t4_template_execution](t4_template_execution)
[t4_extensions](t4_extensions)
[t4_building_blocks](t4_building_blocks)
[t4_utility_methods](t4_utility_methods)
[t4_custom_utility_methods](t4_custom_utility_methods)

[t4_preprocessed_templates](t4_preprocessed_templates)
[t4_template_parameters](t4_template_parameters)
[t4_run_templates_on_build](t4_run_templates_on_build)

[t4_debugging](t4_debugging)
