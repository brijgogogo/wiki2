# binding

## interpolation
One way binding (display) from class property to template.
Syntax between double curly braces is called Template Expression. Angular evaluates the expression with component(class) as the context.

[examples](examples):
```html
 <h1>{{pageTitle}}</h1>
 {{'Title': + pageTitle}}
 {{2*20+1}}
 {{'Title: ' + getTitle()}}
 <h1 innerText={{pageTitle}}></h1>
 {{showImage ? 'Hide' : 'Show'}} Image
```


## Property binding
Allows us to set property of an element to the value of a template expression.

```html
<img [src]='product.imageUrl'>
```
binding target is enclosed in square brackets
binding source is enclosed in quotes

```html
<img [style.width.px]='imageWidth'
  [style.margin.px]='imageMargin'>
```

Interpolation is a special syntax that Angular converts into property binding. It’s a convenient alternative to property binding.
```html
<img src={{product.imageUrl}} : this is interpolation
```

To set an element property to a non-string data value, you must use property binding.
```html
<button [disabled]='isDisabled'>
```

When we need to concatenate strings we have to use interpolation instead property binding.
```html
<img src='https://angular.io/{{imagePath}}'/>
```

https://stackoverflow.com/questions/39112904/property-binding-vs-attribute-interpolation


## Event binding
```html
<button (click)='toggleImage()'>
```
Target Event is enclosed in parenthesis
On the right of equals is Template Statement in quotes

DOM events can be found at https://developer.mozilla.org/en-US/docs/Web/Events

## Two-way binding
Can be used to display a data value and change it too.  Two-way bindings are used with HTML form elements.
```html
<input [(ngModel)]='listFilter'>
<input type="checkbox" [(ngModel)]="item.complete" />
```
Above, when user toggles the checkbox, Angular responds by updating the specified model property.

Square brackets: indicates property binding
Parenthesis : indicates event binding, to send user entered data notification back to the property

ngModel directive is part of `FormsModule` in @angular/forms

