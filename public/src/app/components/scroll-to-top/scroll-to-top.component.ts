import { Component, OnInit, ViewChild } from '@angular/core';

import { Animations } from '@app/common/animations/animations';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { MediaObserver, MediaChange } from '@angular/flex-layout';
import { takeUntil } from 'rxjs/operators';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { MatMenuTrigger } from '@angular/material';

@Component({
  selector: 'app-scroll-to-top',
  templateUrl: './scroll-to-top.component.html',
  styleUrls: ['./scroll-to-top.component.scss'],
  animations: [Animations.fadeInOut]
})
export class ScrollToTopComponent extends SubscribingComponent implements OnInit {
  passed_scroll_threshold = false;
  @ViewChild(MatMenuTrigger) trigger: MatMenuTrigger;

  constructor(private readonly navigation_service: NavigationService,
    private readonly media_observer: MediaObserver) {
      super();
    }

  ngOnInit() {
    const scroll_threshold = 50;
    this.navigation_service.scrollTop$
    .subscribe((scroll_val: number) => {
      this.passed_scroll_threshold = scroll_val > scroll_threshold;
    });

    this.media_observer.media$.pipe(takeUntil(this.destroy$))
    .subscribe((change: MediaChange) => {
      if (change.mqAlias !== `xs` && change.mqAlias !== `sm`) {
        this.trigger.closeMenu();
      }
    });
  }

  scrollToTop () {
    const scrollToTop = window.setInterval(() => {
      const pos = window.pageYOffset;
      if (pos > 0) {
        window.scrollTo(0, pos - 20); // how far to scroll on each step
      } else {
          window.clearInterval(scrollToTop);
      }
    }, 16);
}

}
