# slices
Collection type which can grow.

- Declaring variable that holds a slice (same as array, but you don't specify size)
  var mySlice []int

  Unlike with array variables, declaring a slice variable dones't automatically create a slice.

- Creating slice
  var mySlice []int
  mySlice = make([]int, 7) // creates a slice with 7 int

- accessing is same as array
  mySlice[0] = 1
  fmt.Println(mySlice[0])

- declaration & creation
  primes := make([]int, 3)

- lenght of slice
  fmt.Println(len(primes))

- for loop and for range loops work same as with arrays

## Slice literal

  valueSlices := []int{1, 2, 3}

  s := []struct {
      i int
      b bool
    } {
      {2, true},
      {3, false},
    }

## Slice operator
 slices are built on top of arrays.
It's the underlying array that actually holds the slice's data.
The slice is merely a view into some (or all) of the array's elements.
"make" function or slice literal automatically create the array.

Slice operator: to manually create array and then create slice based on it.
values := [3]int{1,2,3,4,5}
valuesSlice := values[0:3] // 1: index of array where slice should start, 3: index of array slice should stop before
fmt.Println(valuesSlice) // prints [1,2,3]

  a[low : high]
  Includes the first element, but excludes the last one.

- if you omit the start index, 0 is used
  values[:3]
- if you omit stop index, everything from start index to end of underlying array is included in slice
  values[1:]
- values[:]

## Changes
If you change underlying array, those changes will also be visible within the slice, and vice-versa.

## Append
Built-in "append" method takes a slice and values, returns new slice with values appended.
  slice :=[]int{1,2,3}
  slice = append(slice, 4, 5)
  fmt.Println(slice) // [1 2 3 4 5]

## Default value
A slice variable has zero value of nil.
Go functions treat a nil slice value as if it were emtpy slice.
  - len function will return 0
  - append function will treat nil slice as empty slice


# capacity
number of elements in the underlying array

fmt.Printf("%d", cap(s))

# Nil slices - length and capacity zero (no underlying array)

# dynamically sized array - make function - allocates a zeroed array, returns a slice that refers to that array
a := make([]int, 5)   // len(a) = 5           - makes slice
b := make([]int, 0, 5) // len(b)=0, cap(b) = 5
b := b[:cap(b)] // len(b) = 5, cap(b) = 5
b := b[1:] // len(b) = 4, cap(b)=4


# slices of slices
x := [][]string{
    []string{"_", "_"}
  }

x[0][0] = "X"

for i := 0; i < len(x); i++ {
  fmt.Printf("%s", strings.Join(x[i], " ");
}

# append new elements to a slice
var s []int
s = append(s, 0)
s = append(s, 1)
s = append(s, 2, 3, 4)


# range : gives index and copy of element at the index
var vals = []int{1, 2, 3}

for i, v := range vals {
}

// only get index
for i := range vals

// ignore value
for i, _ := range [[vals]]

// ignroe index
for _, value := range vals


https://blog.golang.org/slices-intro


## sort
var names []string
// assign values
sort.Strings(names) // sorts slice alphabetically




