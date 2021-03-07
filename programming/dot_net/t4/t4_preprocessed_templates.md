# Preprocessed templates

* executed at runtime via code
* compiled into the project assembly
* no dependency on VS when running
*

MyTemplate t = new MyTemplate();
string output = t.TransformText();

* Can be extended by Parial classes

public partial class MyTemplate {
  public int ID {get;set;}
}

MyTemplate t = new MyTemplate();
t.ID = 2;
string output = t.TransformText();

