# Methods
- You can define methods on types
- Function with a special receiver argument

type Vertex struct {
  X int
}

func (v Vertex) Abs() int {
  return v.X*v.X;
}

func main() {
  v := Vertex{3}
  fmt.Println(v.Abs())
}

## Work on copy
func (v Vertex) DoubleIt() int {
  v.X = v.X * 2
}
// after the function is called v.X remains same

## Work on reference

func (v *Vertex) DoubleIt() int {
  v.X = v.X * 2
}
// v.X gets doubled

## Methods on non-struc types

type MyFloat float64

func (f MyFloat) Abs() float64 {
  if f < 0 {
    return float64(-f)
  }

  return float64(f)
}


func main() {
  f := MyFloat(-math.Sqrt2)
  fmt.Println(f.Abs)
}


## Pointer receivers
Methods with pointer receivers can modify the value to which the receiver points.
With a value receiver (not pointer), method operates on a copy of the original value.

func (v *Vertes) Abs() float64 { ... }

