# interfaces
An interface is a set of methods that certain values are expected to have.
Any type that has all the methods listed in an interface definition is said to satisfy that interface.
A type that satisfies an interface can be used anywhere that interface is called for.
Method names, parameter types and return values need to match those defined in the interface.

- interfacse are implemented implicitly

type Abser interface {
  Abs() float64
}

type MyFloat float64

func (f MyFloat) Abs() float64 {
..
}

var a Abser
f := MyFloat(-math.Sqrt2)
a = f


## under the hood, interfaces : (value, type)
fmt.Printf("%v, %T", a, a)


## Type assertions
Type conversions aren't meant for use with interface types.
  m := MyConcreteType(myInterfaceValue) // error

Type assertion - get the concrete type back from interface type
  m := myInterfaceValue.(MyConcreteType)

Type assertion failures
  t := i.(T) // if i is not a T, panic occurs

  var anything interface{} = "something"
  aString := anything.(string)
  aInt := anything.(int) // panic
  // no panic on type assertion failure when second return value is expected
  aInt, ok := anything.(int) // ok != nil
  if ok {
    aInt = 5
  }

  t, ok := i.(T)
  // If i holds a T, then t will be underlying value, and ok will be true, no panic occurs


## Type switches

switch v:= i.(type) {
  case int:
    // v is int value
  case string:
    // v is string value
  default:
    // no match, here v has the same type as i
}


## fmt.Stringer interface
allows any type to decide how it will be displayed when printed

  type Stringer interface {
    String() string
  }

  func (g Gallons) String() string {
    return fmt.Sprintf("%0.2f gal", g)
  }

  fmt.Println(Gallons(22.232323)) // 22.23 gal


## error interface
error type is a predeclared identifier, like int or string. It's not part of any package.

error type is an interface
  type error interface {
    Error() string
  }

This means we can define our own types and use them anywhere an error value is required.

  type MonthError int
  func (m MonthError) Error() string {
    return fmt.Sprintf("Invalid month %d", m)
  }

  func validateMonth(int month) error {
    if month > 12 || month < 1 {
      return MonthError(month)
    }

    return nil
  }


## empty interface
The type inteface{] is known as the empty interface, it can hold values of any type.
It doesn't have any methods, so every type satisfies it.

  var i interface{}
  theType := i.(type)

  func AcceptAnything(thing interface{}) {
  }

