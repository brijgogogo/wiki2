# syntax / format / linting / vetting

## Format
Go has a standard format. Go does not provide flexibility on how code is laid out, to make it a great deal easier to write tools that manipulate source code (compiler, code generation, etc.).

- use tabs to indent.
- opening brace has to be in the same line as the declaration or command that begins the block.

`go fmt` reformats your code to match the standard format.
Advanced version of go fmt is `gomports`, it works on import statements, orders alphabetically, removes unused ones, attempts to guess any unspecified imports.

  go install golang.org/x/tools/cmd/goimport@latest
  goimports -l -w .
  -l: prints the files with incorrect formatting.
  -w: modifies the files in-place.
  .: everyting in the current directory and subdirectories are to be scanned.

## Linting
`golint`: tries to ensure your code follows style guidelines. It gives suggestions on:
- variable names
- formatting error messages
- place comments on public methods, types

  go install golang.org/x/lint/golint@latest
  golint ./...
  (runs golint on entire project)

## Vetting
This checks for errors which is syntactically valid, but which you didn't meant to do. This includes things like
- passing wrong number of parameters to formatting methods
- assigning values to variables that are never used

  go vet ./...

## Running multiple tools
Running so many tools on your code may slow it down as every tool has to scan the code. You can run multiple tools together using `golangci-lint`. It combines golint, go vet and other tools.

  golangci-lint run

You can configure the tool using .golangci.yml
https://golangci-lint.run/usage/configuration/


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


