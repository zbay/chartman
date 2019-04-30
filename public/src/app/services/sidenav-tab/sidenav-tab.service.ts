import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { SidenavTab } from '@app/common/interfaces/sidenav-tab.interface';

@Injectable({
  providedIn: 'root'
})
export class  SidenavTabService {
  tabs$: BehaviorSubject<SidenavTab[]> = new BehaviorSubject([]);
  title$: BehaviorSubject<string> = new BehaviorSubject('Sub-menu');

  constructor() { }

  resetSidenav() {
    this.tabs$.next([]);
    this.title$.next(`Sub-menu`);
  }

  setTabs(tabs: SidenavTab[]) {
    this.tabs$.next(tabs);
  }

  setTitle(title: string) {
    this.title$.next(title);
  }
}
