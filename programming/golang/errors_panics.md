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


## defer
Defers making the function call until after current function exits.
It ensures the call takes place even if the calling function exits early.
Works only with function/method calls, not statements.

  func fun() {
    defer fmt.Println("Done") // runs at end
    fmt.Println("Body")
  }


## panic
An error that occurs while your program is running, causes the program to crash.
E.g. access an index that is outside the array.

"panic" function expects a single argument that satisfies the empty interface. That argument is converted to a string (if necessary) and printed as part of the panic's log message.

  panic("bad error")

Panic should be reserved for impossible situations: errors that indicate a bug in the program, not a mistake on the user's part.

When a program panics, all deferred function calls will still be made. If there's more than one deferred call, they will be made in the reverse of the order they were deferred in.

## recover
recover function - stops a program from paniciking
Returns nil when program is not panicking.
When there is a panic, returns whatever value was passed to panic. Return type is interface{}.

  func main() {
    freakOut()
    fmt.Println("Normal exit")
  }

  func freakOut() {
    defer calmDown()
    panic("oh no")
  }

  func calmDown() {
    // recover()
    fmt.Println(recover())
  }

## sources
https://golang.org/ref/spec#Errors

