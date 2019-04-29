import { Component, OnInit } from '@angular/core';

import { SidenavTab } from '@app/common/interfaces/sidenav-tab.interface';
import { SidenavTabService } from '@app/services/sidenav-tab/sidenav-tab.service';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { takeUntil } from 'rxjs/operators';

@Component({
  selector: 'app-sidenav',
  templateUrl: './sidenav.component.html',
  styleUrls: ['./sidenav.component.scss']
})
export class SidenavComponent extends SubscribingComponent implements OnInit {
  tabs: SidenavTab[] = [];

  constructor(private readonly sidenav_tab_service: SidenavTabService) {
      super();
  }

  ngOnInit() {
    this.sidenav_tab_service.tabs$.pipe(takeUntil(this.destroy$))
    .subscribe((new_tabs: SidenavTab[]) => {
      this.tabs = (new_tabs && new_tabs.length > 0) ? new_tabs : [];
    });
  }

}
