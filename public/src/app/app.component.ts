import { Component, OnInit, HostListener } from '@angular/core';

import { NavigationService } from './services/navigation/navigation.service';
import { Debounce } from '@common/decorators/debounce';

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

  @HostListener('window:scroll', ['$event']) // for window scroll events
  @Debounce()
  onScroll(event) {
    this.navigationService.scrollTop$.next(event.target.scrollingElement.scrollTop);
  }

}
