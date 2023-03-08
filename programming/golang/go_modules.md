## Repositories, Modules, Packages
- Repository is a place in a version control system where the source code for a project is stored.
- A module is the root of a Go library or application, stored in a repository.
- Modules consist of one or more packages, which give module organization and structure.

## Module
To use code from packages outside of the standard libray, we need to make sure that we have declared that our project is a module. Every module has a globally unique identifier. In Go, we usually use the path to the module repository, e.g. github.com/userName/myGoModule.
If Go source code contains `go.mod` file in its root directory, it becomes a module. `go mod` command can be used to manage the modules.
```bash
# create go.mod
go mod init <module_path>
# module path should be globally unique
# module path is case-sensitive (convention: lower case)
# go.mod file includes module declaration, minimum compatible version of Go, dependent modules with minimum version required for each one (require section).
# go.mod optionally contains replace section (to override locations of dependent module) and exclude section (to prevent specific versions of module from being used).
```

## Sample go.mod
```gomod
module github.com/brij/gomodules
go 1.12
require (
  github.com/gorilla/mux v1.7.3 // indirect
  github.com/gorilla/rpc v1.2.0 // indirect
  golang.org/x/text v0.3.0
)
// patching the way routing is done
replace github.com/gorilla/mux => ../mymods/github.com/vansimke/mux
exclude github.com/gorilla/rpc v1.1.0
```
- **Description**
First line is go module identifier.
Next is go version used to build the module.
The "require" section lists the dependencies in our application.
After require section we can have more lines which modify how are imports in require are managed. For example "replace" redirects a package to a package in our file system. The "exclude" tells to skip over a specific version of a library.
The "indirect" after a dependency indicates that the module is referred but not used in our project.


# Go Modules
History: https://research.swtch.com/vgo-intro

- A module is made up of one or more packages.
- Modules are configured via go.mod file.
- Modules are Version controlled (strict semantic versioning)
- Dependent libraries are kept in cache
- Integrity of received modules is checked via checksums


## Commands
- get help on mod
$ go help mod

- Create go.mod file
$ go mod init example.com/hello

- build module
$ go build .

- run module
$ go run .

- get third party module
-$ go get -u github.com/gorilla/mux

- List current module and all its dependencies
$ go list -m all

- Clean up (removes unused dependencies)
  go mod tidy
Build the dependency graph of entire application and removed the one not required. It is expensive operation, hence not included in build project by default. So you should include it in your CI/CD build process.

- verify modules (checksum via go.sum file)
$ go mod verify
(verification is not done as part of build/run, as it can take some time in a large project. So it is good to include the verification in your CI/CD build)

- list
  go list -m rsc.io/q...

- get available versions of a module
$ go list -m -versions github.com/gorilla/mux

- read docs
  go doc rsc.io/quote/v3

## go.sum
- go.sum file contains cryptographic hashes of the content of specific module versions.
- go.sum and go.mod should be checked into version control



https://blog.golang.org/using-go-modules


## Versioning Rules
1. v1 and Earlier
  - No promise of backward compatibility prior to v1.0.0 (the api is still taking shape, what features to expose, etc.)
  - import uses package name:

    import github.com/gorilla/mux

2. v2 or greater
  - Backward compatibility should be preserved within a major version
  - Each major version has unique import path

  - v2 suffix at the end indicates usage of version 2. You could also import version 1 without the suffix in the same app. This allow you to upgrade your app in a sane way, not breaking and fixing things in one go.

    go get github.com/gorilla/mux/v2

    import github.com/gorilla/mux/v2

3. Unversioned Commits
  - Still uses semver
  - Prerelease identifier
    - Timestamp
    - commit hash

    e.g.: require golang.org/x/tools v0.0.0-20180917221912-90fa682c2age
    import golang.org/x/tools

## Module Queries
By default "go get" gets the latest released version of a library.
By using Module queries we can have more control on the version being pulled in.

1. Specific version
  - @v1.7.2
2. Version prefix
  @v1 - gets any v1 version, any major and minor
3. Latest (default)
  @latest
4. Specific commit
  @c898989
  @master
5. Comparison
  @>=1.7.2 (closest match wins, not greatest match wins so as to produce reproducible builds)
  go get "github.com/gorilla/mux@<v1.7.0
  - Prereleases have lower precedence


