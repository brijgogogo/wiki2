# interfaces
Lists the methods that must be implemented by a concrete type to meet the interface.
Interfaces are usually named with `er` endings like fmt.Stringer, json.Marshaler, http.Handler, io.Reader, io.Writer, etc.

Interfaces are implemented implicitly. Concrete type does not declare that it implements an interface.  A type implementing an interface can be assigned to a variable or field of interface type.
- enables type safety
- and decoupling
- provides benefits of duck-typing as in dynamically typed languages
- provides benefits of statically typed languages as the interface tells what the code is doing or can do.
```go

type Stringer interface { // in fmt package
  String() string
}

type Abser interface {
  Abs() float64
}

type MyFloat float64

func (f MyFloat) Abs() float64 {
// code
}

var a Abser
f := MyFloat(-math.Sqrt2)
a = f

fmt.Printf("%v, %T", a, a) // under the hood, interfaces : (value, type)

// interface can embed interface
// io package
type Reader interface {
  Read(p []byte) (n int, err error)
}
type Closer interface {
  Close() error
}
type ReadCloser interface {
  Reader
  Closer
}

// you can embed interface in struct


// zero value of interfaces: nil
// interfaces are implemented as a pair of pointers, one to the underlying type and one to the underlying value. In order for an interface to be considered nil both the type and value must be nil.
var s *string // s == nil
var i interface{} // i == nil
i = s // i != nil   // as type becomes non-nil
// nil for an interface indicates we cannot invoke methods on it, it generates panic.
// use reflection to check if value of interface is non-nil


// empty interface
// The type inteface{] is known as the empty interface, it can hold values of any type.
// It doesn't have any methods, so every type satisfies it.
var i interface{}
i = 5
i = "Brij"
i = struct {
  Name string
} { "Brij" }
// common use:
// 1. placeholder for data of uncertain schema that's read from an external source, like JSON data.
// 2. To store values of more than one type.
theType := i.(type)
func AcceptAnything(thing interface{}) {
}

// see if a variable of an interface type has a specific concrete type or if the concrete type implements another interface:
// 1. Type Assertions
// 2. Type Switches

// Type Assertions
// names the concrete type that implemented the interface, or names another interface that is also implemented by the concrete type underlying the interface.
type MyInt int
var i interface{}
var m MyInt = 1
i = m
i1 := i.(MyInt) // type assertion
fmt.Println(i1 + 5)

// type assertions can only be applied to interfaces and are chekced at runtime.
t := myInterfaceValue.(MyConcreteType) // get the concrete type back from interface type
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

// Type switches
// use when an interface could be one of multiple possible types.
switch v := i.(type) {
  case nil:
    // i is nil, type of v is interface{}
  case int:
    // v is int value
  case string:
    // v is string value
  default:
    // no match, here v has the same type as i
}

// type switch or type assertion cannot match or detect wrapped implementation.

// use function type to bridge a function to the interface
type MyInterface interface {
  MyInterfaceMethod(int, string)
}
type MyFuncTpe func(int, string)
func (f MyFuncType) MyInterfaceMethod(i int, s string) {
  f(i, s)
}
// now you can pass MyFuncType anywhere MyInterface is required.
// an interface of only one method could replace a paraemter of function type.
// use such technique when the function depends on many other functions or state that's not specified in its input parameters.

//fmt.Stringer interface
// allows any type to decide how it will be displayed when printed
type Stringer interface {
  String() string
}
func (g Gallons) String() string {
  return fmt.Sprintf("%0.2f gal", g)
}
fmt.Println(Gallons(22.232323)) // 22.23 gal


// error interface
// error type is a predeclared identifier, like int or string. It's not part of any package.
// error type is an interface
type error interface {
  Error() string
}
// This means we can define our own types and use them anywhere an error value is required.
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

```
