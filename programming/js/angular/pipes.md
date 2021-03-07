# pipes
Transform bound properties before display
Classes used to transform or prepare a data value for its use in a data binding.


## built-in pipes
* date
* number, decimal, percent, currency
* json, slice

```html
{{ product.productCode | lowercase }}
<img [title]='product.productName | uppercase'>
{{ product.price | currency:"USD":"symbol":"2.2-2" }}
```

- chaining pipes
```html
{{ product.price | currency | lowercase }}
```

- pipes with paramters
```html
{{ product.price | currency:'USD':'symbol':'1.2-2' }}
```
currency pipe has 3 paramters: desired currency code, a string defining how to show the currency symbol, and digit info
1.2-2 : at least one digit to the left of decimal, at least one digit to the right of the decimal, and no more than two digits to the right of decimal digit.


## custom pipes
1. defining a pipe
```typescript
import { Pipe, PipeTransform } from '@angular/core';
@Pipe({
  name: 'convertToSpaces'
})
export class ConvertToSpacesPipe implements PipeTransform {
  transform(value: string, character: string): string {
    //value is the value on which transform is to be applied
    //rest are arguments
    return "";
  }
}
```

2. using a pipe
```html
<td>{{ obj.Name | convertToSpaces:'-' }}<td>
```

3. declaring in the Module
```typescript
@NgModule({ declarations: [ ConvertToSpacesPipe ] })
export class AppModule {  }
```


