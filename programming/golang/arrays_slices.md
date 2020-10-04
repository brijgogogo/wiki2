# arrays

var a [10]int

- cannot be resized

var a [2]string
a[0] = "Hello"

var primes := [6]int{2,3,5,7,11,13}

totals := [...]int{1, 2, 3}


= slices =
A slice is a dynamically-sized, flexible view into the elements of an array
- changing the elements of a slices modifies the corresponding elements of its underlying array

a[low : high]
Includes the first element, but excludes the last one.


var primes := [6]int{2,3,5,7,11,13}
var s []int = primes[1:4]

## slice literal
q := []int{2, 3, 5}
r := []bool{true, false, true}
s := []struct {
    i int
    b bool
  } {
    {2, true},
    {3, false}
  }

## omit high or low. Default low: zero, Default high: length of the slice
var a [10]int
a[0:10]
a[:10]
a[0:]
a[:]
- lower-bound is included, upper-bound is excluded

## length - number of elements

s := []int{2,3,5,7,11,13}
fmt.Printf("%d", len(s))
s = s[:0]
- re-slicing: length of slice ban be extended upto its capacity
s = s[:4]
// drop first 2 values
s = s[2:]

# capacity - number of elements in the underlying array

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

