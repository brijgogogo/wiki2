# angular modules
In Angular, modules serve as an encapsulation mechanism for the application building blocks — components, directives, pipes. And while there is no encapsulation for services, modules still act as container where services can be registered.

* An Angular application comprises of separate modules which are closely related blocks of functionality.
* Angular Modules contains angular components, organizes the application into a cohesive blocks of functionality.
* Every Angular application has at least one module: the root module (mostly named `AppModule`).
* There can be multiple angular modules in an angular application.
* Angular Modules are different from ES Modules, which are code files that import or export something, for code reuse.


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

A `module` is a plain TypeScript class with the @`NgModule` decorator. The decorator tells Angular that this class is going to be a module. This decorator adds metadata above this class. In the decorator are array attributes which Angular looks for in a module class:

`declarations` - to declare which components, directives or pipes are in this module.

`imports` - to specify what other modules do we use for this module.
  - BrowserModule: contains code Angular features required for a web application.

`providers` - to specify any application wide services we want to use.

`bootstrap`: which component to start the app with (root component)

`exports`: tells the classes which can be used in other parts of the application.


## Types of Angular modules
- feature module: used to group related application functionality to make the application easier to manage.
- root module: used to describe the application to Angular. (convention: src/app/app.module.ts).
