import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { SidenavTab } from '@app/common/interfaces/sidenav-tab.interface';

@Injectable({
  providedIn: 'root'
})
export class SidenavTabService {
  tabs$: BehaviorSubject<SidenavTab[]> = new BehaviorSubject([]);

  constructor() { }

  resetTabs() {
    this.tabs$.next([]);
  }

  setTabs(tabs: SidenavTab[]) {
    this.tabs$.next(tabs);
  }
}
