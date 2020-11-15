# objects

Object.Assign
Object.keys

## destructurig objects
locally scope fields within an objects and to declare which values will be used

let { prop1, prop3 } = obj;
(when using let, you can modify the variables without changing the original object)

## object literal

var obj = {
  name,
  behaviour() {
    console.log(this.name);
  }
}

- opposite of Destructuring
Putting the object back
const obj = { var1, var2 };


## spread operator
- combining objects
const obj2 = {
  ...obj1,
  anotherVar
}

