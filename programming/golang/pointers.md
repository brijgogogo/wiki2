# Pointers
A pointer is a variable that holds the location in memory where a value is stored.
Every variable is stored in one or more contiguous memory locations, called addresses.
Different types of variables take different amount of memory, for e.g. int32 takes 4 bytes, boolean takes one byte.

```go
// &  : "address of" operator - precedes a value type, gets the address of a variable.
var x int = 5
pointerX := &x
// Every pointer takes same amount of memory.
// Zero value of a pointer is nil
// maps, slices, functions are implemented with pointers, hence their zero value is nil.

// * : "indirection" operator - precedes a variable of pointer type, gets the pointed-to value. This is called "dereferencing".
fmt.Println(pointerX)    // prints memory address
fmt.Println(*pointerX)   // prints value of x
// program panics if you dereference a nil pointer.


// pointer type : type that represents a pointer. Written with a * before a type name.
var pointerX *int
pointerX = &x

// built-in function "new" create a pointer variable
var x = new (int) // create a pointer with zero value instance of provided type
fmt.Println(*x) // print 0

// for struct use & before a struct literal to create a pointer instance
x := &MyStruct{}
// can't use & before primitive literal or a constant because they don't have memory addresses. For primitives you could use a helper method to turn them to pointer:
func stringp(s string) * string {
  return &s
}

// if a pointer is passed to a function, the function gets a copy of the poiter. This still points to the original data, which means that the original data can be modified by the called function.
// If you change the value (address) assigned to the pointer (received as function parameter), you change the copy, not the original (as Go is pass by value). When you pass a nil pointer to a function, you cannot make the value non-nil. You can only reassign the value if there was a value already assigned to the pointer.
function update(px *int) {
  x := 101
  px = &x // original doesn't get modified.
}
// Dereferencing puts the new value in the memory location pointed to by both the original and copy:
function update(px *int) {
  *px = 101   // value of original also gets modified
}
```


## Performance benefits
- For pass data in/out of functions consider using pointers:
  - the time to pass a pointer into a function is constant, as the size of a pointer is same for all data types. Passing a value into a function takes longer as the data gets larger.
  - For data structures that are smaller than a megabyte, it is slower to return a pointer type than a value type.

## Tips
- As pointers indicate mutability, be careful with them.
- Rather then return a pointer set to nil from a function, use the comma ok idiom.
- With JSON, use a pointer value for fields in the struct that are nullable.
- Use pointers sparingly, thereby reducing workload of garbage collector.



