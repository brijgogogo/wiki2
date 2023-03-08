# Go CLI

- display current Go version
  $ go version

- Reformats source files using Go standard formatting
  $ go fmt hello.go

- Compile source code files into binary files
  $ go build file.go
  (binary file is name after file name)
  $ go build -o /path/to/output file.go



- compiles and runs a program, without saving an executable file
  go run file.go
Binary is built in a temporary directory and executed from there and gets deleted after your program finishes.

- List go environment variables
  go env

- Create module file
  go mod init example.com/hello

- List dependencies
  go list -m all

- Run tests
  go test

- upgrade latest tagged version:
  go get golang.org/x/text

- list available tagged versions of a module
  go list -m -version rsc.io/sampler

- get specific version
  go get rsc.io/sampler@v1.3.1

- help
  go help
  go help modules
  godoc fmt Println

- go install <dirName>
saves executable in bin directory of Go workspace directory. Go tool will look up the <dirName> within the src directory of Go workspace directory.
(executable is named after the directory)

- go get <packagename/url>

- get documentation
go doc strconv
go doc strconv ParseFloat
