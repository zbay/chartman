import { ActivatedRoute, Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { map, distinctUntilChanged } from 'rxjs/operators';

import { AccountService } from '@account/services/account-service';
import { Animations } from '@app/shared/animations/animations';
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
  routeID: string;
  fb = new FormBuilder();
  resetGroup: FormGroup = this.fb.group({
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(5)] ],
    confirmPassword: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });

  constructor(private readonly accountService: AccountService,
    private readonly errorService: ErrorService,
    private route: ActivatedRoute,
    private router: Router,
    private readonly snackbarService: SnackBarService) {
      super();
   }

  ngOnInit() {
    this.route.paramMap.pipe(
      map((params) => params.get('routeID')),
      distinctUntilChanged()
    )
    .subscribe((routeID) => {
      this.routeID = routeID;
    });
  }

  changePassword() {
    this.accountService.changePassword({routeID: this.routeID, user: this.resetGroup.value})
    .subscribe(() => {
      this.snackbarService.openSnackBar(`Changed password!`);
      this.router.navigate([`/`]);
    },
    (res) => {
      this.errorService.openErrorDialog(res.error);
    });
  }

}
