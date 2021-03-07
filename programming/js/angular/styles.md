# styles

* global style sheet
src/app/styles.css

* import third party css libraries in styles.css:
@import "~bootstrap/dist/css/bootstrap.min.css";
@import "~font-awesome/css/font-awesome.min.css";

* component level inline styles
@Component({
  selector: 'app-demo',
  templateUrl: './demo.component.html',
  styles: ['h1 {color: red;}']
})

* component level external styles
@Component({
  selector: 'app-demo',
  templateUrl: './demo.component.html',
  styleUrls: ['./demo.component.css']
})

