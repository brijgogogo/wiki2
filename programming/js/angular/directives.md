# directives

- Used to manipulate the DOM, apply logic to elements and extend the behavior of elements and components.
- Directives are classes that add behavior to elements
- For example, we use the autoGrow directive to make the textbox automatically grow when it receives focus:
   `<input type="text" autoGrow />`

## Types of directives
1) Component directives
   - Combine and HTML template and a Typescript class to encapsulate the UI and logic of a part of the application
   - example - HelloComponent is a directive that renders h1 tag with "Hello":
      import { Component } from '@angular/core'
      @componet({
         selector: 'app-hello',
         template: '<h1>Hello</h1>'
      })
      export class HelloComponent { }
2) Attribute directives
   - Change the behavior or appearance of an element, component or another directive
   - typically used for styles, classes, or transformations
   - example: ngClass dynamically removes the 'active' class based on the value of 'isActive':
      <p [ngClass]="{'active': isActive}">Text</p>
3) Structural directives
   - change the DOM layout by adding or removing elements
   - typically used asterisk (*) before the directive name
   - *ngIf - defined in BrowserModule, controls whether the html elment should be added to DOM or not
      <table *ngIf='products && products.length'>
      </table>
   -  *ngFor - defined in BrowserModule, repeats the portion of html block in DOM
      <tr *ngFor='let product of products; let i = index'>
         <td>{{ product.productName }}</td>
      </tr>
   - ngSwitch
      <td [ngSwitch]="item.complete">
          <span *ngSwitchCase="true">Yes</span>
          <span *ngSwitchDefault>No</span>
      </td>



We can also create our custom directives.
