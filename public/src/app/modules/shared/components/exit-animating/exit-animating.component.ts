import { Component, OnInit } from '@angular/core';
import { timer } from 'rxjs';
import { mapTo } from 'rxjs/operators';

import { SubscribingComponent } from '../subscribing/subscribing.component';

@Component({
  selector: 'app-exit-animating',
  templateUrl: './exit-animating.component.html',
  styleUrls: ['./exit-animating.component.scss']
})
export class ExitAnimatingComponent extends SubscribingComponent implements OnInit {
  ANIMATION_TIME = 300;

  constructor() {
    super();
  }

  ngOnInit() {
  }

  canDeactivate() {
    return timer(this.ANIMATION_TIME)
      .pipe(
        mapTo(true)
      );
  }

  setAnimationTime(animationTime: number) {
    this.ANIMATION_TIME = animationTime;
  }

}
