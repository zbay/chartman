import { Component, OnInit, Input, ViewEncapsulation, AfterViewInit, AfterContentInit } from '@angular/core';

import { NavigationService } from '@app/services/navigation/navigation.service';
import { Orientation } from '@app/common/enums/orientation.enum';
import { Role } from '@app/common/enums/role.enum';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class NavbarComponent implements OnInit, AfterViewInit {
  readonly Orientation = Orientation;
  readonly Role = Role;

  @Input() orientation: Orientation;

  constructor(private readonly navigation_service: NavigationService) {}

  ngOnInit() {}

  ngAfterViewInit() {
    setTimeout(() => {
      this.navigation_service.navbarHasLoaded$.next(true);
    });
  }

}
