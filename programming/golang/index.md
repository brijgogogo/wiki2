# Go
Created in 2007 by Ken Thompson, Rob Pike, Robert Griesemer (at Google)
https://github.com/golang/go
https://play.golang.org/

- Strong, static type system
- C-inspired systax
- Multi-paradigm : Procedural, Object oriented
- Garbage Colleciton - Fully compiled
- Rapid compilation
- Single binary output

## Philosophy / Values
- Simplicity
- Network aware
- Concurrent apps
- out-of-the-box experience (Standard Libary provides all core features)
- cross-platform (Linux, OS X, Android, ...)
- Backward compatibility

- Go doesn't support overloading

`[installation](./installation.md)`
`[go_cli ](./go_cli.md)`

## Go workspace
You are free to organize your projects as you see fit.
Go expects a single workspace for third-party Go tools installed via go install.
By default this is at $HOME/go and source code for these tools is stored at $HOME/go/src and the compiled binaries in $HOME/go/bin. You can specify one using $GOPATH environment variable, like below:
```bash
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
  ```

There are other environment variables that go uses and can be checked via `go env`.

## Go Runtime
Provides services like memory allocation, garbage collection, concurrency support, networking, built-in functions and types.
It is compiled into every Go binary.

## Third-Party Go Tools
`go install` takes location of source code repository of the project you want to install followed by @ and version. Use @latest for latest version. It downloads, compiles, and installs the tool in $GOPATH/bin directory.


## Go Language
- [syntax](./syntax.md) / format / linting / vetting
- [compilation](./compilation.md)


- [data_types](./data_types.md), variables, constants, conversions
- [control_structures](control_structures.md) (blocks, if, for, switch, goto)
- [functions](functions.md)
- [arrays](arrays.md)
- [slices](slices.md)
- [maps](maps.md)
- [pointers](pointers.md)
- [structs](structs.md)
- [type_definitions](type_definitions.md) (types)
- [methods](methods.md)
- [embedded_types](embedded_types.md)
- [iota](iota.md) (enum)
- [interfaces](interfaces.md)
- [errors_panics](errors_panics.md) (defer)

- [encapsulation](encapsulation.md)

- [math](math.md)

- [go_modules](./go_modules.md)
- [go_packages](go_packages.md)

- [goroutines_gochannels](goroutines_gochannels.md)
- [http](http.md)
- [json](json.md)

## input-output
- [print_read_from_terminal](print_read_from_terminal.md)
- [readers](readers.md)
- [file_io](file_io.md)

## date-time
	var now time.Time = time.Now()
	var year int = now.Year()




## Dependency Injection
https://github.com/google/wire
https://github.com/uber-go/fx
https://github.com/uber-go/dig

## tests
https://github.com/stretchr/testify

## Web Frameworks
- https://github.com/julienschmidt/httprouter

## ORMs
- https://gorm.io/docs/connecting_to_the_database.html

## To-READ
- https://peter.bourgon.org/go-in-production/
- https://www.client9.com/logging-packages-in-golang/
https://golang.org/doc/effective_go.html
https://golang.org/doc/code.html

## sources
https://wiki.archlinux.org/index.php/Go
https://tour.golang.org/list
https://golang.org/doc/
https://vimeo.com/53221558
https://golang.org/doc/articles/wiki/
https://golang.org/doc/codewalk/functions/
https://blog.golang.org/
Head First Go
Learning Go (O'Reilly)
https://golang.org/doc/effective_go
