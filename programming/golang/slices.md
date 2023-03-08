# slices
- length is not part of type
  - can write single function that processes slices of any size
  - can grow slices as needed
  - isn't comparable (x == y is compile error). You can do x == nil.

```go
var x = []int{1,2,3} // no need to specify size when using slice literal
var x = []int{1, 3:1, 3, 7:1, 10} // specify only indices with values
var x [][]int // simulate multidimensional slices (slice of slices)
x[0] = 5 // read & write using bracket syntax

var x []int  // creates a slice of ints, x is assigned zero value of slice (nil)

// slices are not comparable (cannot use == or != with other slices)
fmt.Println(x == nil) // returns true if slice x is not initialized

len(x) // give size of slice, 0 if it is nil

x = append(x, 10) // grow a slice by adding value 10. x ban be nil or not.
x = append(x, 2, 3, 4) // append more than one value
y := []int{50,60,70}
x = append(x, y...) // append one slice into another using ... operator
// it is a compile time error if you do not assign the value returned from append.

cap(x) // returns capacity of slice (capacity - memory reserved by Go Runtime)
// when capacity runs out, Go doubles the size of slice when the capacity is less than 1024 and then grow by at least 25% afterward.
// if you know the number of items you are going to put into a slice, use make
// make(type of slice, length, capacity)
x := make([]int, 5)  // length and capcity both are 5, all elements are initialized with 0.
x := make([]int, 5, 10) // length 5, capacity 10
x := make([]int, 0, 10) // non-nil slice with a length of 0


s := []struct {
      i int
      b bool
    } {
      {2, true},
      {3, false},
    }

// slice expression creates a slice from a slice
x := x[1:3] // [starting offset:ending offset] : slice operator
x := x[:3] // default starting offset is 0
x := x[1:] // default ending offset is end of slice
x :=  x[:]
// when you take a slice from a slice, you are not making a copy of the data.
// the two variables share memory, changes to an element in a slice affect all slices that share that element.

// full slice expression: [low:high:last-position-in-parent-slice]: used to prevent append from sharing capacity between slices.

y := x[:2] // convert array x to slice

destinationSlice := make([]int, 4)
numberOfElementsCopied := copy(destinationSlice, sourceSlice) // copies as many values as it can from source to destination
copy(y, x[2:]) // copy from location
copy(x[:3], x[1:]) // copy into overlapping sections


// sort
var names []string{"b", "c", "a"}
sort.Strings(names) // sorts slice alphabetically
// sort.Slice
```



## sources
https://blog.golang.org/slices-intro
