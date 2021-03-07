# namespace aliases

using WinForms = System.Windows.Forms;
using WebForms = System.Web.Forms;

Console.WriteLine(typeof(WinForms.Button));
Console.WriteLine(typeof(WebForms.Button));


Use namespace alias qualifier: if there is a type by the name of alias:
WinForms::Button

It is recommended to use :: whenever you use aliases.


## global namespace alias
The global namespace is the "root" namespace
"global" namespace alias always refers to the global namespace

global::System.Console.WriteLine("")

