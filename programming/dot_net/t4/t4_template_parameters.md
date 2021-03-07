# Template parameters

* to provide input to templates
* works in both standard and preprocessed templates
* parameters are language agnostic
* parameters are private read-ony properties

<#@ parameter name="Id" type="System.Int32" #>

MyTemplate t = new MyTemplate();
t.Session = new Dictionary<string, object>();
t.Session.Add("Id", 20);
t.Initialize();
string output = t.TransformText();

