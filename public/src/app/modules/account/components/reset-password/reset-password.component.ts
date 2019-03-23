import { ActivatedRoute, Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { map, distinctUntilChanged } from 'rxjs/operators';

import { AccountService } from '@account/services/account-service';
import { Animations } from '@common/animations/animations';
import { ErrorService } from '@app/services/error/error.service';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';
import { MatchingPasswordsValidator } from '@app/validators/matching-passwords';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

@Component({
  selector: 'app-reset-password',
  templateUrl: './reset-password.component.html',
  styleUrls: ['./reset-password.component.scss'],
  animations: [Animations.fadeInOut]
})
export class ResetPasswordComponent extends ExitAnimatingComponent implements OnInit {
  route_id: string;
  fb = new FormBuilder();
  resetGroup: FormGroup = this.fb.group({
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(5)] ],
    confirm_password: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });

  constructor(private readonly account_service: AccountService,
    private readonly error_service: ErrorService,
    private route: ActivatedRoute,
    private router: Router,
    private readonly snackbar_service: SnackBarService) {
      super();
   }

  ngOnInit() {
    this.route.paramMap.pipe(
      map((params) => params.get('route_id')),
      distinctUntilChanged()
    )
    .subscribe((route_id) => {
      this.route_id = route_id;
    });
  }

  changePassword() {
    this.account_service.changePassword({route_id: this.route_id, user: this.resetGroup.value})
    .subscribe(() => {
      this.snackbar_service.openSnackBar(`Changed password!`);
      this.router.navigate([`/`]);
    },
    (res) => {
      this.error_service.openErrorDialog(res.error);
    });
  }

}
