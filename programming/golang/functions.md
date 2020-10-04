# Functions

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

