import { Component, OnInit, ViewChild } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@app/common/enums/orientation.enum';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { MediaObserver, MediaChange } from '@angular/flex-layout';
import { MatMenuTrigger } from '@angular/material';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.elasticUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {
  dropdown_nav_activated = false;
  readonly Orientation = Orientation;
  @ViewChild(MatMenuTrigger) trigger: MatMenuTrigger;

  constructor(private readonly navigation_service: NavigationService,
    private readonly media_observer: MediaObserver ) {
    super();
   }

  ngOnInit() {
      this.navigation_service.navClosings$.pipe(
        takeUntil(this.destroy$)
      ).subscribe(() => this.closeDropdownNav());

      // Close the dropdown menu if the screen largens enough for the non-dropdown
      this.media_observer.media$.pipe(takeUntil(this.destroy$))
      .subscribe((change: MediaChange) => {
        if (change.mqAlias === `lg` || change.mqAlias === `xl`) {
          this.trigger.closeMenu();
        }
      });
  }

  closeDropdownNav () {
    this.dropdown_nav_activated = false;
  }

  toggleDropdownNav () {
    this.dropdown_nav_activated = !this.dropdown_nav_activated;
  }

}
