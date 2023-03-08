# Control Structures

## Blocks
Each place where a declaration occurs is called a block.
- `package block`: variables, constants, types and functions declared outside of any functions
- `file block`: contains import statements
- all variables defined at top level of a function including parameters to a function are in a block
- within a function, every set of curly braces defines another block
- `universe block`: contains predeclared identifiers like built-in types, nil, etc. Universe block contains all other blocks.

You can access an identifier defined in any outer block from within any inner block.
If you declare an identifier with the same name as an identifier in a containing block, you `shadow` the identifier created in the outer block. As long as the shadowing variable exists, you cannot access a shadowed variable. You can add shadowing detection in your build process using `shadow linter`.


## if
```go
x := rand.Intn(10)   // math/rand
if x == 0 {
  // code
} else if x > 4 {
  // code
} else {
  // code
}

// variables scoped to the condition (both if and else blocks)
if x := rand.Intn(5); x == 0 {
  // can access x here
} else {
  // can access x here also
}
// x is not accessible here
```

## loops
```go
// condition-only for
i := 0
for i < 5 {
  println(i)
  i++
  if i == 3 {
    break
    // continue
  }
}

// post clause
for i < 5; i++ {

}

// initializer / C-style for loop
for i := 0; i < 10; i++ {
  // code
}

// infinite loop
for {
}

// array/slice/maps
slice :[]int{1, 2, 3}
for i := 0; i < len(slice); i++ {
  println(slice[i])
}

// for-range loop: used for iterating over elements of some built-in compound types like strings, arrays, slices, maps, user-defined types
for i, v := range slice {  // i: index, v: value
  println(i, v)
}

for _, v := range slice {  // ignore index
  println(i, v)
}

for i := range slice {  // ignore value
  println(i, v)
}

ports := maps[string]int{"http": 80, "https": 443}
for k, v := range ports { // k: key, v: value
  println(k, v)
}
// for-range loops over the map elements in different order almost every time
// fmt.Println prints maps with keys in ascending sorted order

s := "hello"
for _, r := range s {   // iterates over runes
  fmt.Println(r, string(r))   // 104 h
}

// modifying the value variable will not modify the value in the compund type

// label to exit/skip over an iterator of an outer loop
yourLabel:
for _, v := range values {
  for _ v1 := range moreValues {
    continue yourLabel
  }
}

```

## Switch statements
```go
// can switch on any type that can be compared with ==
swtich s := len(arr); s {
  case 1, 2: // multiple matches with comma
    //code
    // can write multi-line code without braces
  case 3:
    // code
    // no need to break as cases don't fall through
    // though can use break to exit early
  case 4: // empty case: nothing happens
  default:
    // code
}


// blank switch: don't specify the value to compare
// use any boolean comparison for each case
switch v := getValue(); {
  case v < 5:
    // code
  case v < 2:
    // code
  default:
    // code
}

```
## goto
specifies a labeled line of code and executin jumps to it
- Go forbids:
  - jumps that skip over variable declaration
  - jumps that go into an inner or parallel block

```go
goto label
```
