import { Component, OnInit } from '@angular/core';

import { Animations } from '@app/common/animations/animations';
import { NavigationService } from '@app/services/navigation/navigation.service';

@Component({
  selector: 'app-scroll-to-top',
  templateUrl: './scroll-to-top.component.html',
  styleUrls: ['./scroll-to-top.component.scss'],
  animations: [Animations.fadeInOut]
})
export class ScrollToTopComponent implements OnInit {
  passed_scroll_threshold = false;

  constructor(private readonly navigation_service: NavigationService) { }

  ngOnInit() {
    const scroll_threshold = 50;
    this.navigation_service.scrollTop$
    .subscribe((scroll_val: number) => {
      this.passed_scroll_threshold = scroll_val > scroll_threshold;
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
