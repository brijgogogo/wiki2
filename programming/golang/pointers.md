# Pointers

& (ampersand) : "address of" operator - gets the address of a variable

  amt := 5
  fmt.Println(amt)
  fmt.Println(&amt)

Values that represent the address of a variable are known pointers.

## Pointer type
symbol * (asterisk) followed by the type of the variable the pointer points to.

  var amt int
  fmt.Println(reflect.Typeof(&amt)) // *int

- Declaring variables to hold pointers
  var num int = 5
  var numPointer *int
  numPointer = &num
  fmt.Println(numPointer) // prints address
  fmt.Println(*numPointer) // prints 5
  *numPointer = 8
  fmt.Println(num) // prints 8

  *numPointer is read as "value at numPointer"


- pointers with functions

  func show(boolPointer *bool) *float64 {
    fmt.Println(*boolPointer)
    *boolPointer = true
    var myFloat = 33.5
    return &myFloat
  }
