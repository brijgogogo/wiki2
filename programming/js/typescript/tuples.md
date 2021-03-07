# Tuples
Tuples are fixed-length arrays, where each item in the array is of a specified type.
Elements are accessed using array indexers.

```typescript
let tuple: [string, string, string];
tuple = ["abc", "def", "ghi"];
console.log(tuple[2]);
```

# Indexable Types
Indexable types associate a key with a value.
Only number and string values can be used as the keys.

```typescript
let cities: { [index: string]: [string, string] } = {};
cities["Delhi"] = ["sunny", "wind"];
cities["Mumbai"] = ["Raining", "humid"];

for (let key in cities) {
  console.log(`${key}: ${cities[key][0]}, ${cities[key][1]}`);
}
```
