import { Injectable } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';

import { BehaviorSubject, Subject } from 'rxjs';
import { filter, map, distinctUntilChanged } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class NavigationService {

  currentUrl$: BehaviorSubject<string> = new BehaviorSubject<string>('/');
  isShowingChart$: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  navbarHasLoaded$: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  navClosings$: Subject<boolean> = new Subject();

  constructor(private router: Router) {
    this.router.events.pipe(
      filter((event) => event instanceof NavigationEnd),
      map((event: NavigationEnd) => event.url),
      distinctUntilChanged()
    ).subscribe((url) => {
      this.currentUrl$.next(url);
      this.isShowingChart$.next(
        (url.indexOf(`/stocks/chart/`) !== -1
        ||
        url.indexOf(`/currencies/chart?`) !== -1));
      }
    );
  }

  closeNavBar (): void {
    this.navClosings$.next(true);
  }

  navigate (url: string | string[]): void {
    if (typeof url === 'string') {
      url = [url];
    }
    this.router.navigate(url);
  }


}
