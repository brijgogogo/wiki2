# maps
Unordered collection where each value is accessed via a key.
Key can be any (same) type as long as that type can be compared using ==.

- Declaring map using map keyword
  var myMap map[string]float64

- Creating map
  var myMap map[string]float64
  myMap = make(map[string]float64)

- value assignment & access
  myMap["key1" = 2.5
  fmt.Println(myMap["key1"])

- map literal
  myMap := map[string]float64{"a": 1.2, "b": 2.2}
  emptyMap := map[string]int{} // creates empty map

- if you access a map key that hasn't been assigned yet, you will get zero value. This makes them safe to manipulate even if value is not assigned.
  counters := make(map[string]int)
  counters["a"]++

- Default value of declared map not yet created is nil.

- tell zero values apart from assigned values
  counters := map[string]int{"a":1, "b":2}
  value, ok = counters["a"] // if "a" is assigned a value, ok (bool) will be true
  _, ok = counters["c"] // only know if value is present

- remove key/value pair
  delete(counters, "a")

- loop
  for key, value := range counters {
    // code
  }

  for key := range counters {
    // code
  }

type Vertex struct {
  X float64
}

var m map[string]Vertex

m = make(map[stringt]Vertex)
m["A"] = Vertex{ 20.20 }
fmt.Println(m["A"])
delete(m, key)
elem, ok := m[key]   // if key is in m, ok is true, otherwise ok is false and elem is zero value of the map's element type

## map literal
var m = map[string]Vertex{
  "A": Vertex { 10.5 },
  "B": Vertex { 10.7 },
  "C": { 33.33 }
}


