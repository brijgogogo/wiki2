# Methods
- functions that are associated with values of a particular type
- Function with a special receiver argument/parameter
- The receiver parameter is just another prameter.

  func (m receiverParameterType) methodName() {
    // code
  }

  variableName.methodName() // The value you're calling the the method on is known as the method receiver.


  type MyString string

  func (m MyString) print() {
    fmt.Println(m)
  }

- Go convention: receiver parameter name is single letter, the first letter of the receiver's type name in lowercase.
- You can define methods on types that are defined in the same package.


## Work on copy
A receiver parameter receives a copy of the receiver values.

  func (v Vertex) DoubleIt() int {
    v.X = v.X * 2
  }
  // after the function is called v.X remains same

## Work on reference
Use pointer for receiver parameter.

  func (v *Vertex) DoubleIt() int {
    v.X = v.X * 2
  }
  // v.X gets doubled



