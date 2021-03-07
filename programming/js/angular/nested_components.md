# nested components
* using a component
  - as a directive
  - as a routing target

Parent/Container component contains nested/child components.
Nested component recieve input from Container component using Input properties.
Nested component sent output to Container component by raising events.

Declare the nested component in your module.
@NgModule({
  declarations: [
    NestedComponent
  ]
})

# Input properties
import { Input } from '@angular/core';
export class NestedComponent {
  @Input()
  inputProperty: number;
}

container-component.html
<div>
  <app-nested-component [inputProperty]='containerProperty.value'>
  </app-nested-component>
</div>


== Output - events ==
Data can be passed to container components using events. Data passed is called event payload.
export class NestedComponent {
  @Output()
  notify: EventEmitter<string> = new EventEmitter<string>();

  onClick() {
    this.notify.emit('clicked!');
  }
}

nested-component.html
<div (click)='onClick()'>
</div>

container-component.html
<div>
  <app-nested-component (notify)='onNotify($event)'>
  </app-nested-component>
</div>

$event is event payload.

export class ContainerComponent {
  onNotify(message: string): void {

  }
}

