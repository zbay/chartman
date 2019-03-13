import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { combineLatest } from 'rxjs';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@common/enums/orientation';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

// TODO: white border on bottom for chart nav
// TODO: animate hide/show, entry/exit for chart nav
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.slideUpDown]
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

  toggleDropdownNav () {
    this.dropdownNavActivated = !this.dropdownNavActivated;
  }

}
