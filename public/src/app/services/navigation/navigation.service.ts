import { Injectable } from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';

import { BehaviorSubject, Subject } from 'rxjs';
import { filter, map, distinctUntilChanged } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class NavigationService {

  currentUrl$: BehaviorSubject<string> = new BehaviorSubject<string>('/');
  navbarHasLoaded$: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  navClosings$: Subject<boolean> = new Subject();
  scrollTop$: BehaviorSubject<number> = new BehaviorSubject<number>(0);

  constructor(private readonly router: Router) {
    this.router.events.pipe(
      filter((event) => event instanceof NavigationEnd),
      map((event: NavigationEnd) => event.url),
      distinctUntilChanged()
    ).subscribe((url) => {
      this.currentUrl$.next(url);
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
