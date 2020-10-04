# Go CLI

- go version

- Run
  go run file.go

- Build
  go build file.go

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

