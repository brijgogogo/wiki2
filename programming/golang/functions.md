# Functions
A function is a group of one or more lines of code that you call/run from other places in your program.
`function main`: special function, when a Go program is run, it looks for main function to run first.

```go
// functions can take arguments/parameter
func doubleIt(num float64) float64 {
  return num * 2;
}

// functions can return multiple values
func manyReturns() (int, bool, stirng) { // wrap in ()
  return 1, true, "hello"
}
myInt, myBool, myString := manyReturns()

// naming return values (useful for documentation, code reading)
func manyReturns() (integerPart int, fractionalPart float64) { // wrap in ()
  integerPart = 1     // named return parameter is pre-declared
  fractionalPart = 2.33 // named return values are initialized to their zero values
  // return 1, 2.33 // you don't have to return named parameter, Go compiler inserts code that assigns whatever is returned to the return parameters.
  return integerPart, fractionalPart
  // return // blank/naked return: returns the last values assigned to the named return values.
}
x, y := manyReturns() // any name can be used for return values

// if multiple input parameters are of same type
func fun(x, y int)  {
  // code
}

// simulating named and optional parameters using struct
func myFun(opts Opts) error {
}
myFun(Opts {
  field1: "value1"
})

// function parameters receive a copy of the arguments from the function call, original values are not changed. Use pointers if you want to modify the original values.

// Variadic functions: allows any number of arguments.
// Uses ellipsis (...) before the type of the last (or only) function parameter.
func myFunc(p1 int, p2 ...string) { // p2 is created as a slice within function
  // code
}
myFunc(1, "a", "b")
myFunc(1) // variadic argument can be ommitted, in which case the slice is empty.
fmt.Println(1, 2, 3, 4)
slice = append(slice, 5, 6)
intSlice := []int{1,3,}
process(intSlice...) // use ellipsis to pass a slice where variadic arguments are expected.

// Functions are values too.
//  - passed around
//  - used as function arguments, return values
func test(fn func(int) int) int {
  // code
}
v := func(x int) int { }
var y = test(v)

var m = map[string]func(int, int) int{
  "first": firstMethod,
  "second": secondMethod,
}

// Function Type: useful for documentation as it gives a name.
type myFuncType func(int,int) int
var m = map[string]myFuncType{
  "first": firstMethod, // any function that matches the function type declaration
  "second": secondMethod,
}

// Anonymous functions (inner functions: functions within a function)
func main() {
  func(i int) { // can be assigned to variable and then used
    fmt.Println(i)
  }(10)
}

// defer: cleanup no matter how we exit a function
f, err := os.Open("/path/to/file")
if err != nil{
  log.Fatal(err)
}
defer f.Close() // delays the invocation until the surrounding function exits.
// you can defer multiple closures, last defer registered runs first.
// any variables passed into a deferred closure aren't evaluated until the closure runs.

// defer example:
defer func() {
  // cleanup code
}() // don't forget to call

```



## closure
Functions declared inside of functions are able to access and modify variables declared in the outer function.
The variables referred are captured by the closure.
- when we pass a function to another function, we can pass some function state to another function
- when returning a function from a function, we can return a closure from a function

## call by value
GO is a call by value language. Every time you pass a parameter to a function, Go makes a copy of the value that's passed in. This holds for primitive types, structs.
Any changes made to a map parameter are reflected in the variable passed into the function. You can modify any element in the slice, but you can't lengthen the slice. This is because maps and slices are both implemented with pointers.
`Every type in Go is a value type. Sometimes the value is a pointer`.
