# Packages
Every Go file starts with a `package clause`, which specifies the package name that the file's code will become part of. A package is constructed from one or more source files. A package is a collection of code that all does similar things.

To use code from other packges, import statements are used.

https://golang.org/ref/spec#Packages

An identifier whose name starts with an uppercase letter is exported.
An identifier whose name starts with a lowercase letter or underscore can only be accessed from within the package where it is declared.
Exported identifiers are prefixed by package name like fmt.Println.

You must specify an `import path` when importing from anywhere besides the standard library. The import path is built by appending the path to the package within the module to the module path.
```go
import "github.com/brijgogogo/my_module/my_package"
```
Once imported package name is used to refer it.
It is a compile-time error to import a package and not use any of the identifiers exported by the package.

Usually you should make the `package name` match the name of the directory that contains the package. However they can be different in situlations like:
- package main: a package is declared to be a starting point for a Go applicaiton by using special package name `main`. You cannot import main package.
- if your directory contains a character that is not valid for Go identifier
- to support versioning using directories

Every Go file in a directory must have an identical package clause.

## Tips
- Package Names: Instead of util.ExtractNames and util.FormatNames, go for extract.Names and format.Names
- structuring package:
  - If your module is small, keep all your code in a single package.
  - If you module consists of one or more applications, create a directory called `cmd` at the root of your module. Within cmd, create one directory for each binary built from your module. Use main as the package name within each of these directories.
  - If your module's root directory contains many files (for test, deployment), place all of your Go code (besides the main packages under cmd) into packages under a directory called `pkg`.
  - Within pkg directory, organize code so as to limit dependencies between packages, e.g. organize by functionality.

- provide alternate name for a package if another has same name
```go
import (
  crand "crypto/rand"
  "math/rand"
)
```

## Package documentation
Go uses comments for documentation (`godoc` format)
  - place the comment directly before the item (no blank lines between the comment and item)
  - start comment with // followed by the name of the item
  - use blank comment to break comment into paragraphs
Package-level comments go before package declaration.
If package comments become lengthy, by convention they are put in doc.go file.
```go
// Package format provides formatting helpers.
package format

// Person represents a person.
type Person struct {
}
```
- Use `go doc` to view godocs
go doc <package_name>.<identifier_name>

## internal package
Special `internal` package name allow you to share a function/type/constant between packages in your module (and not as part of your api).
Exported identifiers from internal package, can be accesed in the direct parent package of internal package and sibling packages of internal package.

## init function
if there is a function named "init" that takes no parameters and returns no values, it runs the first time the package is referenced by another package. Go allows you to declare multiple init function in a single package or even in a single file.

## blank imports
Go doesn't allow unused imports. By using blank imports you can have unused imports.
Assign an unused import  to _ (underscore). Usually it is used with packages with "init" functions.

Avoid "init" functions and "blank imports". Do it explicitly.


## Circular dependencies
Go does not allow circular dependencies between packages.

## alias
To allow gradual changes to your API, you can alias. An alias is a new name for a type.
```go
type Person struct { }
type Human = Person // alias Human for Person
```

## Third-party packages
Import third-party packages by specifying the location in the source code repo.
go build will automatically add the package in go.mod and download it during build. It will also create a `go.sum` file containing modules, versions and hash of modules and hash of the go.mod file for the module.
You should commit both go.mod and go.sum, they specify exactly what versions of your dependencies are being used.

- Go picks the latest version of a dependency when you add it to your project.

- list versions available of a module
$ go list -m -versions github.com/my/module
- get specific version
$ go get github.com/my/module@1.1.0

- Go uses Semantic versioning (SemVer): major.minor.patch

- go uses `Minimal version selection` (MVS) for conflicting versions of indirect common dependency:
https://golang.org/ref/mod#minimal-version-selection

- upgrade to bug patch release (eg. 1.1.0 to 1.1.1, incrementing the patch version)
$ go get -u=patch github.com/some/module
- upgrade to most recent version
$ go get -u github.com/some/module

## Semantic import versioning
- To handle incompatibility, Go modules follow Semantic import versioning rule:
  - the major version of the module must be incremented
  - for all major versions besides 0 and 1, the path to the module must end in vN, where N is the major version.

The path changes because an import path uniquely identifies a package and, by definition, incompatible versions of a package are not the same package. Using different paths means that you can import two incompatible versions of a package into different parts of your program, allowing you to upgrade gracefully.

  "github.com/some/module/v2"

- Remove unused versions
$ go mod tidy


## Vendoring
Keep copies of dependencies inside your module
$ go mod vendor
This creates a vendor directory at the top level of your module that contains all of your module's dependencies.
Advantage: you know exactly what third-party code is going to be used by your project.
Disadvantage: increase in size of your project


## pkg.go.dev
Go team has created a site called pkg.go.dev that automatically indexes open source Go projects. For each module, the package index publishes the godocs, license, README, dependencies, etc.

## Versioning
Follow semantic versioning. Store your changes in your source code, and then apply a tag for patch/minor releases.

If there are changes which break backward compatibility, Go supports two ways:
1. Create a subdirectory within your module named vN, where N is the major version of your module. Copy your code into this subdirectory, including README and LICENSE file.
2. Create a branch in your version control system (with new or old code). Name the branch vN if you are putting the new code on the branch, or vN-1 if you are putting the old code there.

The module path in your go.mod and code should now end with /vN
https://github.com/marwan-at-work/mod
Can be used to automate changing of import path in your code.

https://blog.golang.org/v2-go-modules

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

## Sources
https://github.com/golang/go/wiki/Modules
Learning Go (O'Reilly)
