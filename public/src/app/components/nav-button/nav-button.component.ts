import { Component, OnInit, Input, DoCheck, ChangeDetectorRef } from '@angular/core';

import { Observable, BehaviorSubject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { AuthService } from '@app/services/auth/auth.service';
import { NavbarLoadStatus } from '@app/enums/navbar-load-status';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { SubscribingComponent } from '@shared/components/subscribing/subscribing.component';

@Component({
  selector: 'app-nav-button',
  templateUrl: './nav-button.component.html',
  styleUrls: ['./nav-button.component.scss'],
  animations: [Animations.fadeInOutExpandContractNavButton]
})
export class NavButtonComponent extends SubscribingComponent implements OnInit, DoCheck {

  readonly currentUrl$: Observable<string>;
  readonly loggedIn$: Observable<boolean>;
  readonly navbarHasLoaded$: BehaviorSubject<boolean>;
  NavbarLoadStatus: typeof NavbarLoadStatus = NavbarLoadStatus;

  @Input() link: string;
  @Input() textContent: string;
  @Input() requireLoggedIn: boolean;
  @Input() requireLoggedOut: boolean;
  @Input() equivalentLink: string;

  constructor(private readonly authService: AuthService,
      private readonly cdRef: ChangeDetectorRef,
      private readonly navigationService: NavigationService) {
        super();
        this.navbarHasLoaded$ = this.navigationService.navbarHasLoaded$;
        this.loggedIn$ = this.authService.isLoggedIn$;
        this.currentUrl$ = this.navigationService.currentUrl$;
   }

  ngOnInit() {}

  ngDoCheck() {
    this.navbarHasLoaded$
    .pipe(takeUntil(this.destroy$))
    .subscribe(() => {
      this.cdRef.detectChanges();
    });
  }

  closeNavBar() {
    this.navigationService.closeNavBar();
  }
}
