# Functions
- A function is a group of one or more lines of code that you call/run from other places in your program.

- function main: special function, when a Go program is run, it looks for main function to run first.

- functions can take arguments/parameter

  func doubleIt(num float64) float64 {
    return num * 2;
  }

- functions can return multiple values

  func manyReturns() (int, bool, stirng) {
    return 1, true, "hello"
  }

  myInt, myBool, myString := manyReturns()

- naming return values (useful for documentation, code reading)

  func manyReturns() (integerPart int, fractionalPart float64) {
    return 1, 2.33
  }

  x, y := manyReturns()

- function parameters receive a copy of the arguments from the function call
  Original values are not changed.
  Use pointers if you want to modify the original values.

## Variadic functions
Function which can be called with varying number of arguments.
  fmt.Println(1, 2, 3, 4)
  slice = append(slice, 5, 6)

Uses ellipsis (...) before the type of the last (or only) function parameter.

  func myFunc(p1 int, p2 ...string) {
    // code
  }
The last parameter of a variadic function received the variadic arguments as a slice.
Variadic argument can be ommitted, in which case the slice is empty.

- passing slice to variading function
We need to use ellipsis to pass a slice where variadic arguments are expected.
  intSlice := []int{1,3,}
  process(intSlice...)






Functions are values too.
- passed around
- used as function arguments, return values

func test(fn fun(int) int) int {
...
}

v := func(x int) int {
}

var y = test(v)


## closure
Function value that references variables from outside its body.
Function is bound to the variables - Each closure is bound to its own variable.


