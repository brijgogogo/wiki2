# interfaces
- set of method signatures
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


# under the hood, interfaces : (value, type)
fmt.Printf("%v, %T", a, a)


# empty interface - can hold values of any type
var i interface{}

- All types implement it

theType := i.(type)


# Type assertions - assigns underlying T value to the variable t
t := i.(T) // if i is not a T, panic occurs

var anything interface{} = "something"
aString := anything.(string)
aInt := anything.(int) // panic
aInt, ok := anything.(int) // ok != nil


t, ok := i.(T)
If i holds a T, then t will be underlying value, and ok will be true, no panic occurs


# Type switches

switch v:= i.(type) {
  case int:
    // v is int value
  case string:
    // v is string value
  default:
    // no match, here v has the same type as i
}

# Stringer interface in fmt package - type that can describe itself as a string
type Stringer interface {
  String() string
}

