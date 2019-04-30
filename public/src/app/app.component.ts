import { Component, OnInit, HostListener, ViewChild } from '@angular/core';

import { NavigationService } from './services/navigation/navigation.service';
import { Debounce } from '@common/decorators/debounce';
import { SidenavTabService } from './services/sidenav-tab/sidenav-tab.service';
import { Animations } from './common/animations/animations';
import { SubscribingComponent } from './modules/shared/components/subscribing/subscribing.component';
import { takeUntil } from 'rxjs/operators';
import { SidenavTab } from './common/interfaces/sidenav-tab.interface';
import { MediaObserver, MediaChange } from '@angular/flex-layout';
import { MatMenuTrigger } from '@angular/material';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  animations: [Animations.slideFadeInOutFromLeft, Animations.fadeInOut]
})
export class AppComponent extends SubscribingComponent implements OnInit {
  should_display_sidenav = false;
  @ViewChild(MatMenuTrigger) side_trigger: MatMenuTrigger;

  constructor(private readonly navigation_service: NavigationService,
      private readonly media_observer: MediaObserver,
      private readonly sidenav_tab_service: SidenavTabService) {
        super();
  }

  ngOnInit () {
    this.sidenav_tab_service.tabs$.pipe(takeUntil(this.destroy$))
    .subscribe((tabs: SidenavTab[]) => {
      setTimeout(() => {
        this.should_display_sidenav = tabs.length > 0;
      }, 0);
    });

    this.media_observer.media$.pipe(takeUntil(this.destroy$))
    .subscribe((change: MediaChange) => {
      if (change.mqAlias !== `xs` && change.mqAlias !== `sm`) {
        this.side_trigger.closeMenu();
      }
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
