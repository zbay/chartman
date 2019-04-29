import { Component, OnInit, Input, DoCheck, ChangeDetectorRef } from '@angular/core';

import { Observable, BehaviorSubject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

import { AuthService } from '@app/services/auth/auth.service';
import { NavbarLoadStatus } from '@app/enums/navbar-load-status';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { Role } from '@app/common/enums/role.enum';
import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-nav-button-vert',
  templateUrl: './nav-button-vert.component.html',
  styleUrls: ['./nav-button-vert.component.scss']
})
export class NavButtonVertComponent extends SubscribingComponent implements OnInit, DoCheck {

  readonly current_url$: Observable<string>;
  has_required_role = false;
  readonly logged_in$: Observable<boolean>;
  readonly navbar_has_loaded$: BehaviorSubject<boolean>;
  readonly roles$: Observable<Role[]>;
  NavbarLoadStatus: typeof NavbarLoadStatus = NavbarLoadStatus;

  @Input() equivalentLink: string;
  @Input() equivalentPrefix: string;
  @Input() icon: string;
  @Input() link: string;
  @Input() textContent: string;
  @Input() requireRole: Role;
  @Input() requireLoggedOut: boolean;

  constructor(private readonly auth_service: AuthService,
      private readonly cd_ref: ChangeDetectorRef,
      private readonly navigation_service: NavigationService) {
        super();
        this.navbar_has_loaded$ = this.navigation_service.navbarHasLoaded$;
        this.logged_in$ = this.auth_service.is_logged_in$;
        this.current_url$ = this.navigation_service.currentUrl$;
   }

  ngOnInit() {
    if (this.requireRole) {
      this.current_url$.subscribe(() => {
        this.has_required_role = this.auth_service.isLoggedIn() &&
        this.auth_service.hasAnyRole([this.requireRole]);
      });
    }
  }

  ngDoCheck() {
    this.navbar_has_loaded$
    .pipe(takeUntil(this.destroy$))
    .subscribe(() => {
      this.cd_ref.detectChanges();
    });
  }

  closeNavBar() {
    this.navigation_service.closeNavBar();
  }
}

