# Methods
functions that are associated with values of a particular type

```go
// methods for a type are defined at the package block level
type User struct {
  FirstName string
  LastName string
  Age
}
// methods have "receiver specification" between func keyword and method name
// by convention, the receiver name is first letter of type's name
func (u User) String() string {
  return fmt.Sprintf("%s %s %d", u.FirstName, u.LastName, u.Age)
}
// just like functions, method names cannot be overloaded for a type (Go's philosophy:  making clear what your code is doing).
// methods must be declared in the same package as their associated type.

u1 := User {
  FirstName: "Brij"
}
u1.String()


type MyString string
func (m MyString) print() {
  fmt.Println(m)
}

// method receivers can be pointer receiver or value receiver
// pointer receiver modifies the reciever
// pointer receiver is capable of handling nil instances
// value receiver cannot modify the receiver

// Value reciever / Work on copy
// receiver parameter receives a copy of the receiver values.
func (v Vertex) DoubleIt() int {
  v.X = v.X * 2
}
v1 := Vertex{Value:1}
v1.DoubleIt() // v1.X remains same

// Pointer receiver // Work on reference
func (v *Vertex) DoubleIt() int {
  v.X = v.X * 2
}
v1 := Vertex{Value:1}
v1.DoubleIt() // v1.X gets doubled
// Go automatically converts the variable to a pointer type for calling the method
// (&v1).DoubleIt()


// if you call a method on nil instance
// 1. if the method is a value receiver, you'll get a panic.
// 2. if it's a method with a pointer receiver, it can work if you handle nil instance.
// A method with a value receiver can't check for nil.


// methods are functions
f1 := v.DoubleIt // method value: can assign method to a variable from type instance.
fmt.Println(f1())
f2 := Vertex.DoubleIt // method expression: create a function from the type itself.
fmt.Println(f2(v)) // if any parameters are required they are passed after type instnace.






```
