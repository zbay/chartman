import { Component, OnInit } from '@angular/core';

import { Animations } from '@common/animations/animations';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';

@Component({
  selector: 'app-stocks',
  templateUrl: './stocks.component.html',
  styleUrls: ['./stocks.component.scss'],
  animations: [Animations.fadeInOut]
})
export class StocksComponent extends ExitAnimatingComponent implements OnInit {

  constructor() {
    super();
  }

  ngOnInit() {
  }

}
