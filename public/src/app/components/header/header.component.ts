import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@app/shared/animations/animations';
import { BehaviorSubject } from 'rxjs';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@app/shared/enums/orientation';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

// TODO: use scroll event to hide navbar on chart pages past a certain scroll point
// https://brianflove.com/2016/10/10/angular-2-window-scroll-event-using-hostlistener/

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.slideUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {
  dropdownNavActivated = false;
  isShowingChart$: BehaviorSubject<boolean>;
  readonly Orientation = Orientation;

  constructor(private readonly navigationService: NavigationService) {
    super();
    this.isShowingChart$ = this.navigationService.isShowingChart$;
   }

  ngOnInit() {
        this.navigationService.navClosings$.pipe(
          takeUntil(this.destroy$)
        ).subscribe(() => this.closeDropdownNav());
  }

  closeDropdownNav () {
    this.dropdownNavActivated = false;
  }

  toggleDropdownNav () {
    this.dropdownNavActivated = !this.dropdownNavActivated;
  }

}
