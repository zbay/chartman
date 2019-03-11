import { Component, OnInit } from '@angular/core';

import { NavigationService } from './services/navigation/navigation.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {

  constructor(private readonly navigationService: NavigationService) {}

  ngOnInit () {}

  closeNavBar(): void {
    this.navigationService.closeNavBar();
  }

}
