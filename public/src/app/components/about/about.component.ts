import { Component, OnInit } from '@angular/core';
import { Animations } from '@common/animations/animations';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.scss'],
  animations: [Animations.fadeInOut]
})
export class AboutComponent extends ExitAnimatingComponent implements OnInit {

  constructor() {
    super();
   }

  ngOnInit() {
  }

}
