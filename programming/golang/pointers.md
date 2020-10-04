# Pointers

A pointer holds memory address of a value.
A * operator denotes the pointer's underlying value.
The & operator generates a pointer to its operand.

var p  *int       // pointer to a variable of type int
i := 42
p = &i            // assign memory address of the variable i to pointer p
*p = 123          // De-reference pointer p to get i and assign a value to it
fmt.Println(*p)   // Print the value of i by dereferencing p

