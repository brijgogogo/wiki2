# angular modules
- Groups together related components, directives, pipes, and services into chohesive blocks of functionality.
- Every Angular application has at least one root module (often called `AppModule`).
- There can be multiple angular modules in an angular application.
- A `module` is a plain TypeScript class with the @`NgModule` decorator.


```typescript
import { BrowserModule } from '@angular/platform-browser'
import { NgModule } from '@angular/core';
import { FormModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';

@NgModule({
declarations: [
  AppComponent
],
imports: [
  BrowserModule,
  FormsModule,
  HttpModule
],
providers: [],
bootstrap: [AppComponent]
})
export class AppModule {  }
```


`declarations` - declares which components, directives or pipes belong to the module

`imports` - imports other modules to use their exported features

`providers` - provides services that can be injected throughout the module

`bootstrap`: which component to start the app with (root component)

`exports`: exports selected components, directives or pipes to make them available to other modules


## Types of Angular modules
- Root Module: bootstraps the Angular application, usually called `AppModule`. Every app has exactly one root module.
- Feature Module: encapsulates a feature/functionality, helping in code organizatin and lazy loading.
- Shared Module: Contains commonly used components, directives, pipes that are reused across other modules.
- Core Module: Houses app-wide singleton services and components that should be instantiated only once.
- Routing Module: Defines routes for a feature or entire app.


