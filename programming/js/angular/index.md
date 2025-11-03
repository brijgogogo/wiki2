# Angular
Javascript framework  for SPA.


- [angular_cli](angular_cli.md)
- [modules](modules.md)
- [component](component.md)
- [directives](directives.md)
- [binding](binding.md)
- [pipes](pipes.md)
- [services](services.md)
- [router](router.md)
- [styles](styles)
- [tree_shaking](tree_shaking)
- [http](http)

## Angular Decorators
- Class Decorators
@Component, @NgModule, @Injectable, @Directive, @Pipe
- Property Decorators
@Input, @Output
- Method Decorators
@HostListener
- Parameter Decorators
@Inject


## @Input decorator
Allows a parent component to pass data into a child component.
@Input() message: string
<app-child [message]="'Hello'"></app-child>

## @Output decorator
Allows a child component to send data or events to its parent component.
@Output messageEvent = new EventEmitter<string>();
this.messageEvent.emit('Hello');
<app-child (messageEvent)="receiveMessage($event)"></app-child>
receiveMessage(message: sring) { }

## Observables
Observables provide support for passing messages between parts of your application.



## angular.json
angular.json file is used to configure the project tools.


## Refer element
using #<name> we can refer to the element in the template's data binding
```html
  <input class="form-control" placeholder="Enter task here" #todoText />
  <button class="btn btn-primary" (click)="addItem(todoText.value)">
```

## Rxjs
Used by Angular to handle stage changes in applications.


## Forms
1) Template Driven Forms
    - Defined in template (HTML) of the component
    - Rely on directives, two-way binding of inputs to the model
    - Behind the scenes they use FormGroup, FormControl automatically
2) Reactive Forms
    - Defined in component class
    - Make use of FormControl, FormGroup, FormArray classes to manage form's state and validation
    - immutable data structures: any change to form control creates a new state
    - Data model is managed by form controls

## Reactive Forms
- FormControl: tracks state of an input: valid, valid/invalid, untouched(pristine)/touched(dirty)
- FormGroup: tracks state of a group of inputs/controls
- FormGroup and its FormControl(s) constitute FormModel


## Local Variable
- Reference to a DOM element or a directive instance within a template
- Declared using hash ('#') followed by varible name
- Below #myInput references <input> element
  <input #myInput type="text" />
  <button (click)="logValue(myInput.value)">Log Value</button>
- local variable to a directive instance: <ng-template #templateOne>...</ng-template>

## [property]="expression"
Binds a component property to a DOM property
<img [src]="imageUrl">

## (event)="statement"
Binds a DOM event to a method in your component
<button (click)="onClick()">Click me</button>

## [(ngModel)]="property"
Combines property binding and event binding to create a two-way data binding
<input [(ngmodel)]="name">
This is syntactive sugar for: <input [ngModel]="name" (ngModelChange)="name=$event"

## @ViewChild decorator
- Used to get a reference to a child component, directive or DOM element from the view
- Reference to a child component:
  @ViewChild(ChildComponent) child: ChildComponent;
  child.someMethod();
- Reference to a native DOM element
  <input #inputElement type="text">
  @ViewChild('inputElement') input: ElementRef;
  this.input.nativeElement.focus();
- static: if you need to access the queries element or component before Angular has rendered the view
  @ViewChild('inputElement', {static: true}) input: ElementRef;
  - true: query resolves before change detection runs
  - false: query resolves after change detection



## pending
https://rishabh.io/misc/how-to-create-an-angular-4-app-from-scratch.html
https://1904labs.com/2017/05/06/1399/
https://blog.angularindepth.com/avoiding-common-confusions-with-modules-in-angular-ada070e6891f
http://exploringjs.com/es6/ch_modules.html
https://www.typescriptlang.org/docs/handbook/modules.html
https://blog.angularindepth.com/setting-up-angular-from-scratch-1f518c65d8ab


## Sources
https://angular.io/guide/architecture
https://angular.io/guide/styleguide
https://angular.io/guide/npm-packages#feature-packages
https://angular.io/guide/glossary
https://angular.io/guide/file-structure

