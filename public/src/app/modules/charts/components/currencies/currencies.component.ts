import { Component, OnInit } from '@angular/core';

import { Animations } from '@common/animations/animations';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';

@Component({
  selector: 'app-currencies',
  templateUrl: './currencies.component.html',
  styleUrls: ['./currencies.component.scss'],
  animations: [Animations.fadeInOut]
})
export class CurrenciesComponent extends ExitAnimatingComponent implements OnInit {

  constructor() {
    super();
   }

  ngOnInit() {
  }

}
