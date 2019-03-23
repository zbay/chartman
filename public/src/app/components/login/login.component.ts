import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { distinctUntilChanged, map } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { AuthService } from '@app/services/auth/auth.service';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';
import { MatchingPasswordsValidator } from '@app/validators/matching-passwords';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  animations: [Animations.fadeInOut]
})
export class LoginComponent extends ExitAnimatingComponent implements OnInit {
  fb = new FormBuilder();
  login_group: FormGroup = this.fb.group({
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ]
  });
  return_url: string;
  signup_group: FormGroup = this.fb.group({
    first_name: [ '', [Validators.required, Validators.maxLength(100)]],
    last_name: [ '', [Validators.required, Validators.maxLength(100)]],
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ],
    confirm_password: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });

  constructor(private readonly auth_service: AuthService,
              private readonly route: ActivatedRoute) {
    super();
  }

  ngOnInit() {
    this.route.queryParams.pipe(
      map((params) => params.return_url),
      distinctUntilChanged()
    )
    .subscribe((return_url) => {
      this.return_url = return_url;
      this.auth_service.attemptAutoLogin(return_url);
    });
  }

  loginAttempt() {
    this.auth_service.login(this.login_group.value, this.return_url);
  }

  signupAttempt() {
    this.auth_service.signup(this.signup_group.value, this.return_url);
  }

}
