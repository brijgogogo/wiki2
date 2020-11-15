# readers

io.Reader interface, which represents the read end of a stream of data

https://golang.org/search?q=Read#Global


package main

import (
	"fmt"
	"io"
	"strings"
)

func main() {
	r := strings.NewReader("Hello, Reader!")

	b := make([]byte, 8)
	for {
		n, err := r.Read(b)
		fmt.Printf("n = %v err = %v b = %v\n", n, err, b)
		fmt.Printf("b[:n] = %q\n", b[:n])
		if err == io.EOF {
			break
		}
	}
}



## Read file
  file, err = os.Open("myfile.txt") // returns pointer to os.File
  if err != nil {
    log.Fatal(err)
  }
  scanner := bufio.NewScanner(file)
  for scanner.Scan() { // reads a line from the file
    fmt.Println(scanner.Text()) // print the line
  }
  err = file.Close()
  if err != nil {
    log.Fatal(err)
  }
  if scanner.Err() != nil {
    log.Fatal(scanner.Err())
  }

