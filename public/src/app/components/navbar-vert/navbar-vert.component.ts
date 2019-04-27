import { Component, OnInit, AfterViewInit } from '@angular/core';
import { Role } from '@app/common/enums/role.enum';
import { NavigationService } from '@app/services/navigation/navigation.service';

@Component({
  selector: 'app-navbar-vert',
  templateUrl: './navbar-vert.component.html',
  styleUrls: ['./navbar-vert.component.scss']
})
export class NavbarVertComponent implements OnInit, AfterViewInit {
  readonly Role = Role;

  constructor(private readonly navigation_service: NavigationService) {}

  ngOnInit() {}

  ngAfterViewInit() {
    setTimeout(() => {
      this.navigation_service.navbarHasLoaded$.next(true);
    });
  }

}

