# maps
Assiciates one value to another.
Unordered collection where each value is accessed via a key.
```go

var myMap map[string]float64 // a nil map with string keys and float64 values

m := map[string]int{} // empty map literal, length 0

m := map[string]int {
  "k": 1,
  "s": 2,
}

myMap = make(map[string]float64, 10) // create a map with an initial size


myMap["key1"] = 2.5
fmt.Println(myMap["key1"])


// if you access a map key that hasn't been assigned yet, you will get zero value. This makes them safe to manipulate even if value is not assigned.
counters := make(map[string]int)
counters["a"]++


// comma ok idiom
counters := map[string]int{"a":1, "b":2}
value, ok = counters["a"] // if "a" is assigned a value, ok (bool) will be true
_, ok = counters["c"] // only know if value is present


delete(counters, "a") // remove key/value pair

// maps are not comparable like slices.
// You can check if they are nil.
// Value can be of any type.
// Key for a map can be any comparable type (can't use slice or map as key)

// simulate a set (unique values) using a map where key is elements of set and value is true
myset := map[int]bool{}
myset[1] = true
fmt.Println(myset[1]) // if key is present it will return true, otherwise false
// can use struct for sets as well
// advantage: empty struct uses zero bytes, boolean uses one byte.
// disadvantage: struck makes your code more clumsy: less obvious assignment and have to use comma ok idiom
myset := map[int]struct{}{}
myset[1] = struct{}
if _, ok := myset[1]; ok {

}

// loop
for key, value := range counters {
  // code
}

for key := range counters {
  // code
}

// your type as value
type Vertex struct {
  X float64
}
m := make(map[string]Vertex)
m["A"] = Vertex{ 20.20 }

```
