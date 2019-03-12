import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { BehaviorSubject } from 'rxjs';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@common/enums/orientation';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.slideUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {
  dropdownNavActivated = false;
  isShowingChart$: BehaviorSubject<boolean>;
  scrollTop$: BehaviorSubject<number>;
  readonly Orientation = Orientation;

  constructor(private readonly navigationService: NavigationService) {
    super();
    this.isShowingChart$ = this.navigationService.isShowingChart$;
    this.scrollTop$ = this.navigationService.scrollTop$;
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
