# Custom Utility methods

* Templates can be extended using standard classes
* Set the inherits attribute to class name
* Add assembly directive to assembly containing the class
* Utility class must inherit from TextTransformation
  - Microsoft.VisualStudio.TextTemplating
* May require Visual Studio SDK

class MyCustomTemplate : TextTransformation 
{
  public override string TransformText() {
    throw new NotImplementedException();
  }
  
  public string ToTitleCase(sring input) {
    TextInfo ti = Thread.CurrentThread.CurrentCulture.TextInfo;
    return ti.ToTitleCase(input.ToLower());
  }
}

<#@ template lanuage="C#" inherits="myNamespace.MyCustomTemplate" #>
<#@ assembly name="$(TargetDir)\my.dll" #>

<#= ToTitleCase("HELLO thIS is SoMe Text");

