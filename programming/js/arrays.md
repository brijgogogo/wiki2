# arrays

Arrays.push
Arrays.concat
Arrays.map(func)
Arrays.reduce
Arrays.join(",")
Arrays.filter(x => x == 2) (takes in a predicate)
(use filter instead of pop or splice)


# destructuring
const [name1] = ["name1", "name2", "name3"}
const [, , name3] = ["name1", "name2", "name3"}


# spread operator

- combine contents of arrays
```javascript
const arr1 = ["a", "b"];
const arr2 = ["c", "d"];'
const arr = [...arr1, ...arr2]
```


- get remaining items (destructuring)
const [first, ...others] = arr;


- collect function arguments as an array (rest parameters)

function fun(...args) {
}

