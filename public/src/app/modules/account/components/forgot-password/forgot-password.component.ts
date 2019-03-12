import { Component, OnInit } from '@angular/core';
import { FormGroup, Validators, FormBuilder } from '@angular/forms';

import { first } from 'rxjs/operators';

import { AccountService } from '@account/services/account-service';
import { Animations } from '@common/animations/animations';
import { ErrorService } from '@app/services/error/error.service';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.scss'],
  animations: [Animations.fadeInOut]
})
export class ForgotPasswordComponent extends ExitAnimatingComponent implements OnInit {
  fb = new FormBuilder();
  emailGroup: FormGroup = this.fb.group({
    email: [ '', [Validators.required, Validators.email] ]
  });
  hasMadeSuccessfulRequest = false;

  constructor(private readonly accountService: AccountService,
      private readonly errorService: ErrorService) {
        super();
       }

  ngOnInit() {
  }

  requestPasswordChange () {
    this.accountService.requestPasswordChange(this.emailGroup.get('email').value)
      .pipe(first())
      .subscribe((success) => {
        this.hasMadeSuccessfulRequest = true;
      }, (res) => {
        this.errorService.openErrorDialog(res.error);
      });
  }

}
