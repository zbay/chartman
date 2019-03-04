import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { distinctUntilChanged, map } from 'rxjs/operators';

import { Animations } from '@app/shared/animations/animations';
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
  loginGroup: FormGroup = this.fb.group({
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ]
  });
  returnUrl: string;
  signupGroup: FormGroup = this.fb.group({
    firstName: [ '', [Validators.required, Validators.maxLength(100)]],
    lastName: [ '', [Validators.required, Validators.maxLength(100)]],
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ],
    confirmPassword: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });

  constructor(private authService: AuthService,
              private route: ActivatedRoute) {
    super();
  }

  ngOnInit() {
    this.route.queryParams.pipe(
      map((params) => params.returnUrl),
      distinctUntilChanged()
    )
    .subscribe((returnUrl) => {
      this.returnUrl = returnUrl;
      this.authService.attemptAutoLogin(returnUrl);
    });
  }

  loginAttempt() {
    this.authService.login(this.loginGroup.value, this.returnUrl);
  }

  signupAttempt() {
    this.authService.signup(this.signupGroup.value, this.returnUrl);
  }

}
