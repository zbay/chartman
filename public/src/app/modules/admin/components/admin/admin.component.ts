import { Component, OnInit, OnDestroy } from '@angular/core';
import { Animations } from '@app/common/animations/animations';
import { SidenavTab } from '@app/common/interfaces/sidenav-tab.interface';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';
import { SidenavTabService } from '@app/services/sidenav-tab/sidenav-tab.service';

const ADMIN_PATH_PREFIX = `/admin/`;
const USERS_RELATIVE_PATH = `users`;
const CURRENCIES_RELATIVE_PATH = `currencies`;
const STOCKS_RELATIVE_PATH = `stocks`;
const ERRORS_RELATIVE_PATH = `errors`;

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss'],
  animations: [Animations.fadeInOut]
})
export class AdminComponent extends SubscribingComponent implements OnInit, OnDestroy {
  sidenav_tabs: SidenavTab[] = [
    {
      label: `Users`,
      path: `${ADMIN_PATH_PREFIX}${USERS_RELATIVE_PATH}`,
      icon: `account_circle`,
      equivalent_link: `/admin`
    },
    {
      label: `Currencies`,
      path: `${ADMIN_PATH_PREFIX}${CURRENCIES_RELATIVE_PATH}`,
      icon: `monetization_on`
    },
    {
      label: `Stocks`,
      path: `${ADMIN_PATH_PREFIX}${STOCKS_RELATIVE_PATH}`,
      icon: `work`
    },
    {
      label: `Errors`,
      path: `${ADMIN_PATH_PREFIX}${ERRORS_RELATIVE_PATH}`,
      icon: `error`
    }
  ];

  constructor(private readonly sidenav_tab_service: SidenavTabService) {
    super();
  }

  ngOnInit() {
    this.sidenav_tab_service.setTabs(this.sidenav_tabs);
    this.sidenav_tab_service.setTitle(`Admin pages`);
  }

  ngOnDestroy() {
    this.sidenav_tab_service.resetSidenav();
  }

}
