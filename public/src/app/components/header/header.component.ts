import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@app/common/enums/orientation.enum';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.elasticUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {
  dropdown_nav_activated = false;
  readonly Orientation = Orientation;

  constructor(private readonly navigation_service: NavigationService) {
    super();
   }

  ngOnInit() {
      this.navigation_service.navClosings$.pipe(
        takeUntil(this.destroy$)
      ).subscribe(() => this.closeDropdownNav());
  }

  closeDropdownNav () {
    this.dropdown_nav_activated = false;
  }

  toggleDropdownNav () {
    this.dropdown_nav_activated = !this.dropdown_nav_activated;
  }

}
