# Type Definitions
Type definitions allow you to create types of your own based on an underlying type.

type <NameOfType> <underlyingType>

  type myType struct {
    id int
    name string
  }

- using type
  var t1 myType
  t1.id = 5


  func show(t myType) {
    // code
  }

  func process() myType {
    var t myType
    return t
  }

## Use Go's defined types to make it clear what a value is to be used for.

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
