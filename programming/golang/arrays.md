# arrays

- values must be of same type
- all values are initialized to the zero value of the type that array holds
- fixed in size, can't grow or shrink
- index starts from 0
- array size is part of the type of array.
  - cannot use variable to specify the size of an array, as types must be resolved at compile time.
  - can't use type conversion to convert arrays of different sizes to identical types.
  - can't write a function that works with arrays of any size.
  - can't assign arrays of different sizes to the same variable.
- Don't use arrays unless you know the exact length you need ahead of time.
- Arrays provide the backing store for slices.

```go
  var a [10]int
  var dates [3]time.Time

  var a [2]string
  a[0] = "Hello"


  // array literal are used to initialize array
  var x [3]int = [3]int{1, 2, 3}
  var x = [3]int{1, 2, 3}
  var x = [...]int{1, 2, 3}  // skip specifying number of elements using ...

  // sparse array: array whose most elements are set to zero value
  var x = [10]int{1, 3: 10, 4, 8: 11, 99} // specify specific indices with values
  // [1, 0, 0, 10, 4, 0, 0, 0, 11, 99]

  var x = [...]int{1,2,3}
  var y = [3]int{1,2,3}
  fmt.Println(x == y) // true

  // simulate multidimensional arrays
  var x [2][3]int // array of length 2 whose type is an array of ints of length 3

  fmt.Println(len(x)) // length of array using built-int fuction len

  // fmt package knows how to handle arrays
  fmt.Println(values)   // prints: [1 2 3]
  fmt.Printf("%#v", values)     // prints: [3]int{1, 2, 3}


  // for loop
  for i := 0; i <= len(values); i++ {
    fmt.Println(i, values[i])
  }

  // for range
  for index, value := range values {
    // code
  }
  // You can use blank identifier (_) for index or value, if you don't need it.

  // function return value
  func GetValues() [3]int {
    // code
  }


```
## [slices](slices.md)


