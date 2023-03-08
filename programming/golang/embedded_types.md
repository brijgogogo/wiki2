# Embedded Types
Go doesn't have inheritance. Go allows code reuse via composition and promotion.
```go
// composition
type Animal struct {
  Name string
  ID int
}
func (a Animal) Run() string {
  return fmt.Sprintf("%s is running", a.Name)
}
type Dog struct {   // enclosing type
  Animal            // embedded type
  Legs int
}
// above Animal is an embedded type
// Types can contain other types. The embedded type is anonymous, you don't give it a name.
func (d Dog) Bark() {
  // code
}
// fields or methods declared on an embedded field are promoted to the containing struct
d := Dog {
  Animal: Animal{
    Name: "MyDog",
    ID: 1
  }
  Legs: 4
}
fmt.Println(d.ID) // promoted fields or methods can be invoked directly
fmt.Println(d.Run())
// if the containing struct has fields or methods with the same name as an embedded field, use the embedded fields type to refer its fields.
fmt.Println(d.Animal.ID)


type Discount struct {
  precent float32
  promotionId string
}
type ManagersSpecial struct { // enclosing type
  Discount     // embedded type
  extraoff float32
}
januarySale := Discount{15.0, "January"}
managerSpecial := ManagersSpecial{januarySale, 10.00}
managerSpecial.Discount.percent = 5.2 // can refer by name
managerSpecial.percent  = 5.2 // promoted field
managerSpecial.Discount.someMethod(someParameter)


```


## Also see Embedded [structs](structs.md)

- You can embed any type within a sruct.

- It's not inheritance
  - cannot assign enclosing type to a variable of embedded type
  - no dynamic dispatch: if you have a method on an embedded field that calls another method on the embedded field, and the containing struct has a method of the same name, the method on the embedded field will not invoke the method on the containing struct.

- the methods on an embedded field do count toward the method set of the containing struct (this makes the containing struct implement an interface).


