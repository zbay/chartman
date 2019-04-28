import { Component, OnInit, HostListener } from '@angular/core';

import { NavigationService } from './services/navigation/navigation.service';
import { Debounce } from '@common/decorators/debounce';
import { SidenavTabService } from './services/sidenav-tab/sidenav-tab.service';
import { Animations } from './common/animations/animations';
import { SubscribingComponent } from './modules/shared/components/subscribing/subscribing.component';
import { takeUntil } from 'rxjs/operators';
import { SidenavTab } from './common/interfaces/sidenav-tab.interface';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  animations: [Animations.slideFadeInOutFromLeft]
})
export class AppComponent extends SubscribingComponent implements OnInit {
  should_display_sidenav = false;

  constructor(private readonly navigation_service: NavigationService,
      private readonly sidenav_tab_service: SidenavTabService) {
        super();
      }

  ngOnInit () {
    this.sidenav_tab_service.tabs$.pipe(takeUntil(this.destroy$))
    .subscribe((tabs: SidenavTab[]) => {
      this.should_display_sidenav = tabs.length > 0;
    });
  }

  closeNavBar(): void {
    this.navigation_service.closeNavBar();
  }

  @HostListener('window:scroll', ['$event']) // for window scroll events
  @Debounce()
  onScroll(event) {
    this.navigation_service.scrollTop$.next(event.target.scrollingElement.scrollTop);
  }

}
