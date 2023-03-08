# installation

## arch packages
- go              (compiler tools)
- go-tools        (developer tools: code formatter, linter, dependency manager, test runner, etc.)

verify:
- go version
- go env
- go help gopath

https://wiki.archlinux.org/index.php/Go
https://golang.org/dl

## Other tools
pacman -S gopls go-ethereum go-bindata

## Multiple versions of golang
You can install secondary Go environment:

  go get golang.org/dl/go.1.15.6
  go1.15.6 downloads
  go1.15.6 build

Delete secondary environment:

  go1.15.6 env GOROOT
  rm -rf $(go1.15.6 env GOROOT)
  rm $(go env GOPATH)/bin/go1.15.6
