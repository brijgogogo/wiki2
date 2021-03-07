# Component Lifecycle
Create -> Render -> Create and render children -> Process changes -> Destroy

Lifecycle hooks:
`OnInit`: perform component initialization, retrieve data
`OnChanges`: Perform action after changes to input properties
`OnDestroy`: perform cleanup

* OnInit
import { OnInit } from '@angular/core';
export class DemoComponent implements OnInit {
  ngOnInit(): void {

  }
}

* OnChanges
OnChanges watches only Input properties (see [nested_components](nested_components.md))

import { OnChanges } from '@angular/core';
export class StarComponent implements OnChanges {
  rating: number = 4;
  starWidth: number;

  ngOnChanges(): void {
    this.startWidth = this.rating * 75 / 5;
  }
}

<div class="crop" [style.width.px]="starWidth" [title]="rating">
  <div style="width: 75px">
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
  </div>
</div>

