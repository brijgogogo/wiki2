# service
A service is just a plain class that encapsulates any non user interface logic like making http calls, logging, business rules, data access etc.

## Dependency Injection
You can create instance of a service and start using it in your component. But if you need the data to be shared across components, then we should register the service with Angular using @Injectable decorator.

- Injector: creates dependencies and maintains a container of dependency instances.
- Provider: object that tells an injector how to obtain or create a dependency.

```typescript
import { Injectable } from '@angular/core';

@Injectable()
export class DemoSerivce {
  getItems() : IItem[] {
  }
}
```

When Angular discovers that a component depends on a service, it first checks if the injector has any existing instances of that service. If a requested service instance doesn't yet exist, the injector makes one using the registered provider, and adds it to the injector before returning the service to Angular.

## Providing Services
You register providers in the metadata (@Injectable, @NgModule, or @Component)


- Register provider with root injector: servie is available everywhere
```typescript
@Injectable({
  providedIn: 'root'
})
export class DemoService {}
```

- Register a provider in specific NgModule: same instance of a service is available to all components in that NgModule
```typescript
@NgModule({
  providers: [DemoService]
})
```

- registering a provider in component injector: you get new instance of the service with each new instance of that component.
```typescript
@Component({
  providers: [DemoService]
})
export class DemoComponent {}
```

## Injecting the Service
```typescript
@Component({})
export class DemoComponent {
  private _demoService;

  constructor(demoService: DemoService){
    this._demoService = demoService;
  }
}
```

shortcut of above code (use private/public/protected before the parameter name)

```typescript
@Component({})
export class DemoComponent {
  constructor(private demoService: DemoService){}
}
```

## Sources
https://angular.io/guide/architecture-services


