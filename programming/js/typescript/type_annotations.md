## Type annotations
Type annotations are expressed using a colon followed by the type. Gives compiler error if matching type values are not passed/assigned.

```typescript
export class Test {
  _first: string;

  fun(temp: number) : string {
  }

  get first() : string {
    return )first;
  }
}
```

- union type: TypeScript allows multiple types to be specified, separated using a bar.
Type assertion (<> or as keyword) is used to work out which type has been received (like by casting to a type to check if it contains a specific method).

```typescript
fun(temp: number | string) : string {
  // let value: number = (<number>temp).toPrecision ? <number>temp : parseFloat(<string>temp);
  let value: number = (temp as number).toPrecision ? temp as number : parseFloat(<string>temp);
  return value.toString();
}
```

- any keyword: allows any type.

```typescript
fun(temp: any) : string {
  let value: number;
  if((temp as number).toPrecision) {
    valueu = temp;
  } else if((temp as string).indexOf) {
    value = parseFloat(<string>temp);
  } else {
    value = 0;
  }
  return "";
}
```

