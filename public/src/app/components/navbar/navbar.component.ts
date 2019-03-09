import { Component, OnInit, Input, ViewEncapsulation, AfterViewInit } from '@angular/core';
import { Orientation } from '@shared/enums/orientation';
import { NavigationService } from '@app/services/navigation/navigation.service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class NavbarComponent implements OnInit, AfterViewInit {
  loggedIn = false;
  currentUrl: string;
  readonly Orientation = Orientation;

  @Input() orientation: Orientation;

  constructor(private readonly navigationService: NavigationService) {}

  ngOnInit() {}

  ngAfterViewInit() {
    this.navigationService.navbarHasLoaded$.next(true);
  }

}
