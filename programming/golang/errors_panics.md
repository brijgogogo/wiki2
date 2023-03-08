## Errors in go
Functions last return value type is error in case of errors. If there are no errors, nil is returned for the error parameter.

```go
func div(x, y int) (int, error) {
  if(y == 0) {
    return 0, errors.New("y cannot be 0") // New function in errors package.
    // Error messages should not be capitalized not end with punctuation or newline.
    // In most cases, other return values are set to their zero values.
  }
  return x / y, nil
}
// once the function returns, check the error value
z, err := div(10, 0)
if err != nil {
  fmt.Println(err)
  fmt.Printf("%+v", err) // see stack trace (use -trimpath flag when building code to not include full path of the files on computer where build occurred)
  os.Exit(1)
}

// Error type is a built-in interface
type error interface {
  Error() string
}

error.New("msg") // returns an error
// "msg" is returned when you call Error method on error
// fmt.Println calls the Error method

fmt.Errorf("y cannot be %d", y) // allows usage of formatting verbs as in fmt.Printf and returns error

// Sentinel errors indicate that you cannot start or continue processing.
// by convention their names start with Err like ErrMessageTooLong, ErrFormat
// checking sentinal error: err == zip.ErrFormat

// custom errors
type Status int
const (
  InvalidLogin Status = iota + 1
  NotFound
)
type StatusErr struct {
  Status Status
  Message string
}
func (se StatusErr) Error() string {
  return se.Message
}
// generating error
return nil, StatusErr {
    Status: InvalidLogin,         // consuming code can check status
    Message: "invalid login"
  }

// tip: you should declare a variable of your custom error and then return that variable. As error is an interface, the moment you declare it of a type, it gives false for err != nil. You could explicitly return nil for the error value. You could also declare the variable of type error (instead of your custom type).

// wrapping error: preserving an error with additional information.
// error chain: when we have a series of wrapped errors.
// fmt.Errorf function has a special verb %w, it is used to create an error while formatted string includes the formatted string of another error. By convention %w is placed at the end.
return fmt.Errorf("some error: %w", err) // err is error being wrapped
// errors.Unwrap function unwraps the errors. You pass it an error and it returns the wrapped error (returns nil if there isn't).
if wrappedErr := errors.Unwrap(returnedErr); wrappedErr != nil {
  // handling wrapped error
}
// to wrap an error with your custom error type, your error type needs to implement the method Unwrap
// use %v to get only message  (thereby not wrapping)
return fmt.Error("some error: %v", err)


// errors.Is: checks if returned error or any errors that it wraps match a specific sentinal error instance
if err != nil {
  if errors.Is(err, os.ErrNotExist) {
    fmt.Println("file does not exist")
  }
}
// errors.Is uses == to compare each wrapped error with the specified error
// define Is method on your error to use custom comparison:
func (e MyErr) Is(target error) bool {
  if e1, ok := target.(MyErr); ok {        // type assertion
    return reflect.DeepEqual(e, e1)        // reflection
  }
  return false
}

// error.As: checks if a returned error or any error it wraps matches a specific type
// matched error is assigned to second parameter (pointer)
var myErr MyErr          // variable to error type
// var myErr interface { ErrorCode() int } // anonymous or named interface
if errors.As(err, &myErr) {
  // handle error
}
// you could override As method to use your custom logic.

// use errors.Is when you are looking for a specific instance or specific values.
// use errors.As when you are looking for a specific type.
```

## log.Fatal
log.Fatal function logs a message to the terminal and stops the program
```go
  input, err := reader.ReadString('\n')
  if err != nil {
    log.Fatal(err)
  }
```


## defer
Defers making the function call until after current function exits.
It ensures the call takes place even if the calling function exits early.
Works only with function/method calls, not statements.
```go
  func fun() {
    defer fmt.Println("Done") // runs at end
    fmt.Println("Body")
  }
```

## panic
Go generates a panic whenever there is a situation where the Go runtime is unable to figure out what should happen, e.g. programming error (like attempt to read past the end of slice) or environmental problem (like out of memory). Once panic occurs, the current function exits immediately and any defers attached to the current function start running. When those defer complete, the defers attached to the calling function run, and so on, until the main is reached. The program then exits with a message and a stack trace.

- creating your own panic: built-in panic function
"panic" function expects a single argument that satisfies the empty interface. That argument is converted to a string (if necessary) and printed as part of the panic's log message.
```go
  panic("bad error")
```
Panic should be reserved for impossible or fatal situations: errors that indicate a bug in the program, not a mistake on the user's part.

## recover
use built-in recover function to capture a panic to provide a more graceful shutdown or prevent shutdown. The recover function is called from defer to check if a panic happened.
Returns nil when program is not panicking. When there is a panic, returns whatever value was passed to panic. Return type is interface{}.

```go
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
```

Usually recover is used to log the situation to monitoring software and exit the program with os.Exit(1).
If you are creating a library for thir parties, do not let panics escape the boundaries of your public API (convert panic into an error).

## sources
https://golang.org/ref/spec#Errors
Learning Go (O'Reilly)
https://github.com/pkg/errors
https://pkg.go.dev/github.com/pkg/errors
