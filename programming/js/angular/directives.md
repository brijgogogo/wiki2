# directives

We use directives to work with the DOM. We use directives to add behaviour to existing DOM elements. For example, we use the autoGrow directive to make the textbox automatically grow when it receives focus:

`<input type="text" autoGrow />`

We can also create our custom directives.


## structural directives
-  *ngIf - defined in BrowserModule, controls whether the html elment should be added to DOM or not
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
