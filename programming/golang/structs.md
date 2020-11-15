# struct
A struct/structure is a value that is constructed out of other values of many different types.
Collection of fields.

- declaring
  var myStruct struct {
    id int
    name string
  }
  Each field is set to zero value for its type.

- assign & access value using dot operator
  myStruct.id = 1
  fmt.Println(myStruct.id)


## [type_definitions](type_definitions.md)


## pointers
var v myStructType
v.id = 1
var pointer *myStructType = &v
fmt.Println(*pointer.id) // compile error, Go thinks id must contain a pointer
fmt.Println((*pointer).id) // prints id
fmt.Println(pointer.id) // prints id (provided to avoid writing (*pointer) all the time)
pointer.id = 2


## modify struct using a function
Go is a "pass-by-value" language, functions receive a copy of the struct.
Use pointers to modify struct in functions.

  func setDefaultId(t *myType) {
    t.id = 1
  }

  var t1 myType
  setDefaultId(&t1)

## Usage with functions
Its often a good idea to pass functions a pointer to a struc, rather than the struct itself otherwsie a copy is created which consumes more memory.
  func printInfo(t *myStructType) {
    t.id = 1
  }

  func setDefaults() *myStructType {
    var t myStructType
    t.id = 1
    return &t
  }


## Export
Struct name must be capitalized to be used outside the package.
Struct field names must be capitalized to be exported.


## Struct literal
  myStruct := myStructType{id: 1, name: "a"}


## Struct can contain other structs as fields
  type address struct {
    city string
    state string
  }
  type user struct {
    id int
    homeAddress address
  }

  u1 := user{id: 1}
  u1.homeAddress.city = "Delhi"


## Anonymous struct fields
Anonymous fields: struct fields that have no name of their own, just a type.
  type user struct {
    id int
    address
  }
With anonymous field, you can use the field's type name as if it were the name of the field.
  u1 := user{id: 1}
  u1.address.city = "Delhi"

## Embedding structs
An inner struct that is stored within an outer struct using an anonymous field is said to be embedded within the outer struct.
Fields for an embedded struct are promoted to the outer struct.

  u1 := user{id: 1}
  u1.city = "Delhi"





## Get Pointer
v := new(Vertex)  // initializes with zero value, gives a pointer

var v1 *Vertex
v1 = new (rect)


## tags
Tags add meta information.

type T struct {
  f1 string "f one"
  f2 string
  f3 string `f three`
  f4, f5 int64 `f four and five`
}


// raw strings literals
// interpreted string literals

## reflect package

import "reflect"
t := reflect.TypeOf(T{})
f1, _ := t.FieldByName("f1")
fmt.Println(f1.Tag)


## Lookup/Get
v, ok := f1.Tag.Lookup("one")
v1 := f1.Tag.Get("one") // Get is wrapper of Lookup which discards boolean flag

- fot tag: `one:"1" two:"2"blank:""`
v, ok := f.Tag.Lookup("one") // v == 1
v, ok = f.Tag.Lookup("blank") // v = "", ok == true
v, ok = f.Tag.Lookup("five") // ok == false


- for tag: "one:`1`"
v, ok := f.Tag.Lookup("one") // ok == false

- for tag: "one:\"1\""
v, ok := f.Tag.Lookup("one") // 1


== sources ==
https://medium.com/golangspec/tags-in-golang-3e5db0b8ef3e


