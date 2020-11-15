# Packages
Every Go file starts with a package clause, which specifies the package name that the file's code will become part of.
A package is constructed from one or more source files. A package is a collection of code that all does similar things.

package main: special package to run directly.


To use code from other packges, import statements are used.

https://golang.org/ref/spec#Packages

## package import path vs package name
import path: unique string that identifies a package and used to import
Once imported package name is used to refer it.
They can be same or different.

  import "math/rand"
  var x = rand.Intn(100)

## packages
- math
  math.Floor(2.75)

- strings
  strings.Title("lets go")

- reflect
  reflect.TypeOf(x)

- random number
  seconds := time.Now().Unix() // get curreent date and time as integer
  rand.Seed(seconds) // seed the random number generator
  rand.Intn(100) // generate an integer from 0 to 99

## workspace directory
Go tools looks for package code in workspace which by default is $HOME/go

Workspace dir contains:
1. bin dir: holds compiled binary executables
2. pkg dir: holds compiled binary package files
3. src dir: holds Go source code

Go tools look for package code in a folder within the workspace's src directory whose name matches the name in the import statement.

"Go install" command saves compiled binary versions of executable programs in bin directory in Go workspace.

GOPATH environment variable sets the workspace directory.

## Package name rules
- Generally, the package name should match the name of the directory it's kept in, but the "main" package is an exception to that rule.
- a package name should be all lowercase
- name should be abbreviated if the meaning is fairly obvious
- should be one word, if possible. If using more than one word, do not use underscore or capital letters (eg. strconv)

## Package qualifiers
- exported function or variable names are qualified by package name
- local function or variable names do not need to be qualified

## Nested package directories
You can nest group of similar packages together in a directory in your Go workspace. That directory then becomes part of the import path for all the packages it contains.


## download & install packages
  go get github.com/author/packagename
Git repository is downloaded at author/packagename in Go's workspace's src directory.
Now you can use it:
  import "github.com/author/packagename"
