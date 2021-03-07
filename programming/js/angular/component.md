# Components
Fundamental building block of Angular applications. They display data on the screen, listen for user input, and take action based on that input.

A component encapsulates the template, data and behavior of a view.
It is a plain TypeScript class. Properties hold the data for the view and
methods implement the vehaviour of a view, like what should happen if I click
a button.


`Component =   Template + Class + Metadata`

* Template: fragments of HTMl that contains expressions that are evaluated by Angular.
  * view layout
  * created with html
  * includes binding and directives

* class
  * code supporting the view
  * created with typescript
  * properties: data
  * methods: logic

* Metadata
  * extra data for angular
  * defined with a decorator

All components must be declared in the angular module.

# example
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  template: '<div><h1>{{title}}</h1></div>'
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app works!';
}

`ng generate component <component-name>`

## Comopnent decorator
@Component decorator tells Angular that this is a component. Properties:
  - selector: specifies a css selector for a host html element. When Angular sees an element that matches this css selector, it will create an instance of our component in the host element. (also called component directive)

 - template: specifies the html that will be inserted into DOM when component's view is rendered. We can write html here or on in a separate html file and refer to it using `templateUrl`

 - styleUrls: specifies one or more CSS stylesheets that are used to style the elements produced by the component and its template.



# ngOnInit
The `ngOnInit` is a lifecycle hook Angular calls ngOnInit shortly after creating a component. It's a good place to put initialization logic.
-----------------------------------------

{{title}} : interpolation binding syntax



%% {{ hero.name | uppercase }}
The word uppercase in the interpolation binding, right after the pipe operator ( | ), activates the built-in UppercasePipe.
`Pipes` are a good way to format strings, currency amounts, dates and other display data. Angular ships with several built-in pipes and you can create your own.


<input [(ngModel)]="hero.name" placeholder="name">
`ngModel` is Angular's two-way data binding syntax.


<li *ngFor="let hero of heroes"> == =====
   <span class="badge">{{hero.id}}</span> {{hero.name}}
</li>

The *`ngFor` is Angular's repeater directive. It repeats the host element for each element in a list.


<li (click)="onSelect(hero)">
This is an exmaple of Angular's Eveng binding syntax.
The parentheses around click tell Angular to listen for the <li> element's click event.

<app-hero-detail [hero]="selectedHero"></app-hero-detail>
Angular Property binding (one way)

@Input propName: propType;
To accept values of a property form outside, it must be marked with `@Input` decorator.

* [component_lifecycle](component_lifecycle.md)


```html
<td [ngSwitch]="item.complete">
<td [ngSwitch]="'Apples'">
```
In first td, attribute value contains javascript expression.
In second td, attribute value constains literal string Apples (in single quotes).
