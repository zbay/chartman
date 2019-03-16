import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { combineLatest } from 'rxjs';

import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@common/enums/orientation';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.elasticUpDown, Animations.slideUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {
  dropdownNavActivated = false;
  showingFullHeader = true;
  readonly Orientation = Orientation;

  constructor(private readonly navigationService: NavigationService) {
    super();
   }

  ngOnInit() {
      const scrollThreshold = 50;
        this.navigationService.navClosings$.pipe(
          takeUntil(this.destroy$)
        ).subscribe(() => this.closeDropdownNav());

        combineLatest(this.navigationService.isShowingChart$, this.navigationService.scrollTop$)
          .subscribe((vals) => {
            const isShowingChart: boolean = vals[0];
            const scrollTop: number = vals[1];
            this.showingFullHeader = !isShowingChart || (scrollTop < scrollThreshold);
          });
  }

  closeDropdownNav () {
    this.dropdownNavActivated = false;
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

  toggleDropdownNav () {
    this.dropdownNavActivated = !this.dropdownNavActivated;
  }

}
