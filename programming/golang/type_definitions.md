# Type Definitions
Type definitions allow you to create types of your own based on an underlying type.

  type <NameOfType> <underlyingType>

```go
type MyInt int
type MyFun func(string)MyInt
type MyMap map[string]MyInt

// can declare type at any block level

type myType struct {
  id int
  name string
}
// using type
var t1 myType
t1.id = 5

func show(t myType) {
  // code
}
func process() myType {
  var t myType
  return t
}

// types are documentation, they make code clearer by providing a name for a concept and describing the kind of data that is expected.
type Liters float64
type Gallons float64

var carFuel Gallons
var busFuel Liters
carFuel = Gallons(10.0) // converts float64 to Gallons
busFuel = Liters(240.0)

carFuel = Liters(240.0) // compile error
carFuel = Gallons(Liters(40.0)) // can convert between types that have the same underlying type

carFuel = Gallons(Liters(40.0) * 0.264) // correct logical conversion from liters to gallons

fmt.Println(Liters(1.2) + Liters(2.2)) // defined type supports all the same operations as its underlying type
fmt.Println(Liters(1.2) + 2.2)  // defined type can be used in operations together with literal values
fmt.Println(Liters(1.2) + Gallons(2.2)) // compile error, cannot use defined types in operations together with values of a different type, even if underlying types are same

// types based on other types
type T1 int
type T2 T1
type Employee Person
// not exactly inheritance: can't assign an instance of type child type to a varible of parent type or vice versa without a type conversion.
var i int = 5
// for user-defined types whose underlying types are built-int types, a user-declared type can be used with the operators for those types, or assigned literals/constants compatible with the underlying type.
var t1 T1 = 10 // assigning untype constants
var t2 T2 = 20
t1 = i  // compile error
t2 = t1 // compile error
t1 = T1(i)
t2 = T2(t1)
// a type conversion between types that share an underlying type keeps the same underlying storage but associates different methods.


```
