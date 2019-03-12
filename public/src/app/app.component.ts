import { Component, OnInit, HostListener } from '@angular/core';

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

  // TODO: Decorate to debounce https://stackoverflow.com/questions/44634992/debounce-hostlistener-event
  @HostListener('window:scroll', ['$event']) // for window scroll events
  onScroll(event) {
    this.navigationService.scrollTop$.next(event.target.scrollingElement.scrollTop);
  }

}
