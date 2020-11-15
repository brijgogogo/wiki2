## Errors in go

## log.Fatal
log.Fatal function logs a message to the terminal and stops the program

  input, err := reader.ReadString('\n')
  if err != nil {
    log.Fatal(err)
  }


## Errors
An error value is any value with a method named Error that returns a string.

- creating error value
  err := errors.New("some message")
  fmt.Println(err.Error()) // Error() method returns error message
  fmt.Println(err) // prints message, methods of fmt and log packages check if Error method is available and use it
  log.Fatal(err)

- creating error with formatted message
  err := fmt.Errorf("value %0.2f is invalid", -2.3333)
  fmt.Println(err.Error())

Error type is a built-in interface

type error interface {
  Error() string
}


func demo() error {
  // return nil
  return errors.New("issue")
}




## panics
An error that occurs while your program is running, causes the program to crash.
E.g. access an index that is outside the array.

panic("bad error")



## sources
https://golang.org/ref/spec#Errors

