# router

URL routing: uses current URL displayed by the browser to select the components that are displayed to the user.
Each mapping of a URL to a component is known as URL route of just a route.
RouterModule.forRoot method is passed a set of routes.

Angular looks for <router-outlet> directive to display the component.

## Navigating
- Code: navigateByUrl("/url") method on Router is used to navigate.
- routerLink attribute (RouterModule needs to be imported)
```html
  <button routerLink="/cart">Cart</button>
```

## Route guards
Used to govern the routing system like prevent the application from starting with /car or /order URL.






-- moved from old wiki
= routing =
a route maps to a component
routes follow first match strategy

# showing routes
<a routerLink="/items">Items</a>
<a [routerLink]="['/home']">Home</a>

# route definition:
{ path: 'items', component: ItemListComponent }

# location of display of route component:
<router-outlet></router-outlet>

# router module
import { RouterModule } from '@angular/router';

@NgModule({
  imports: [
    RouterModule.forRoot([]) // pass array of route definitions
    //RouterModule.forRoot([], { useHash: true }) //for hash routes
  ]
})


# index.html
<base href="/">
tells the router how to compose the navigation urls


# route definition examples
{ path: 'items', component: ItemListComponent }

//route paramters
{ path: 'items/:id', component: ItemDetailComponent }

//redirect
{ path: 'home', component: HomeComponent}
{ path: '', redirectTo: 'home', pathMatch: 'full' }

//wildcard path
{ path: '**', component: PageNotFoundComponent }

