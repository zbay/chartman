import { Component, OnInit } from '@angular/core';

import { takeUntil } from 'rxjs/operators';

import { Animations } from '@app/shared/animations/animations';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@app/shared/enums/orientation';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [Animations.slideUpDown]
})
export class HeaderComponent extends SubscribingComponent implements OnInit {

  dropdownNavActivated = false;
  Orientation = Orientation;

  constructor(private navigationService: NavigationService) {
    super();
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
