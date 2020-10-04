# maps
Maps keys to values

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


