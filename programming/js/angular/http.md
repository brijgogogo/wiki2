# http requests/respones

import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';

- use in service
@Injectable({
  providedIn: 'root'
})
export class ItemService {
  private url = 'www.domain.com/api/items';

  constructor(private http: HttpClient) {  }

  getItems() : Observable<IItem[]> {
    //return this.http.get(this.url);
    return this.http.get<IItem[]>(this.url).pipe(
      tap(data => console.log('All: ' + JSON.stringify(data))),
      catchError(this.handleError)
    );
  }

  private handleError(err: HttpErrorResponse) {

  }
}


- app.module.ts
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  imports: [
    HttpClientModule
  ]
})
export class AppModule {  }


- some.component.ts
ngOnInit() : void {
  this.itemService.getItems().subscribe(
    items => this.items = items,
    err => this.errorMessage = <any>err
  );
}

