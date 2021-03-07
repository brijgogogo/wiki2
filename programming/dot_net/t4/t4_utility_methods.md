* Any white space in text block will be in output

Utility methods
* Output
  * Write(string)
  * WriteLine(string)
* Indentation
  * PushIndent(string) - increases current indent with given string
  * PopIndent() - removes the last indent pushed
  * ClearIndent() - removes all indents
  * CurrenIndent - string containing the entire indent
* Notification
  * Warning(string) : compiler warning
  * Error(sring)    : compiler error

Host.TemplateFile : gets path of template (when hostspecific = true)

this.Errors.HasErrors : if there were any errors


