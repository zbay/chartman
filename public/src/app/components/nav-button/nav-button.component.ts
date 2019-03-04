import { Component, OnInit, Input } from '@angular/core';

import { Observable } from 'rxjs';

import { Animations } from '@app/shared/animations/animations';
import { AuthService } from '@app/services/auth/auth.service';
import { NavigationService } from '@app/services/navigation/navigation.service';

@Component({
  selector: 'app-nav-button',
  templateUrl: './nav-button.component.html',
  styleUrls: ['./nav-button.component.scss'],
  animations: [Animations.fadeInOutExpandContract]
})
export class NavButtonComponent implements OnInit {

  loggedIn$: Observable<boolean>;
  currentUrl$: Observable<string>;

  @Input() link: string;
  @Input() textContent: string;
  @Input() requireLoggedIn: boolean;
  @Input() requireLoggedOut: boolean;
  @Input() equivalentLink: string;

  constructor(private authService: AuthService,
      private navigationService: NavigationService) {
   }

  ngOnInit() {
    this.loggedIn$ = this.authService.isLoggedIn$;
    this.currentUrl$ = this.navigationService.currentUrl$;
  }

  closeNavBar() {
    this.navigationService.closeNavBar();
  }
}
