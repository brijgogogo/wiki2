# arrays

- fixed in size, can't grow or shrink
- index starts from 0
- all values are initialized to the zero value of the type that array holds

  var a [10]int
  var dates [3]time.Time

  var a [2]string
  a[0] = "Hello"


## Aray Literal
If you know values of array in advance, you can initialize the array with those values using array literal

  var values [3]int = [3]int{1, 2, 3}
  primes := [3]int{2,3,5}            // short variable declaration
  totals := [...]int{1, 2, 3}



## Array operations
- fmt package knows how to handle arrays
  fmt.Println(values)   // prints: [1 2 3]
  fmt.Printf("%#v", values)     // prints: [3]int{1, 2, 3}

- array length - built-in len function
  fmt.Println(len(values))  // prints 3

- for loop
  for i := 0; i <= len(values); i++ {
    fmt.Println(i, values[i])
  }

- for range
  for index, value := range values {
    // code
  }
You can use blank identifier (_) for index or value, if you don't need it.

- function return value
  func GetValues() [3]int {
    // code
  }


## [slices](slices.md)


