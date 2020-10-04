# struct
Collection of fields


type Vertex struct {
  X int
  Y int
}

func main() {
  fmt.Println(Vertex{1, 2})
}

## Struct literals
var (
  v1 = Vertex{1, 2}
  v2 = Vertex{X:1}
  v3 = Vertex{}
  p = &Vertex{1, 2}
)

#
v1.X   // behind the scenes, de-referencing happens for us then field is accessed  like (*v1).X

## Accessing through pointer
v := Vertext{1,2}
p := &v
p.X = 20

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


