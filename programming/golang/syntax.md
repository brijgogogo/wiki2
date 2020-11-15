# syntax

Semicolons are optional to separate statements in Go


## Name rules (variables, functions, types)
- name must begin with a letter and can have any number of additional letters and numbers
- If the name begins with a capital letter, it is considererd "exported" and can be accessed from packages outside the current one.

## Go naming community conventions
- camel case
- when the name is obvious from the context, abbreviate it (use i instead of index, max instead of maximum)


## comments
// single line comments
/* block
   comments
*/


## Doc comments
Go comments that appear immediately before a package clause or function declaration are treated as doc comments and will be display in "go doc"'s output.

Rules:
- Package comments should begin with "Package" followed by the package name
- Function comments should begin with the name of the function they describe.
- You can include code examples in your comments by indenting them

## godoc tool
Like golang.org htmo documentation, generates HTML documentation for packages installed on your machine.
  $ godoc -http=:6060
  (http://localhost:6060/pkg)


