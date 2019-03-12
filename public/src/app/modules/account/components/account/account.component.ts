import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { AccountService } from '@account/services/account-service';
import { Animations } from '@common/animations/animations';
import { BasicProfile } from '@common/models/basic-profile';
import { ErrorService } from '@app/services/error/error.service';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';
import { MatchingPasswordsValidator } from '@app/validators/matching-passwords';
import { NavigationService } from '@app/services/navigation/navigation.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

const HOME_URL = `/charting/stocks`;

@Component({
  selector: 'app-account',
  templateUrl: './account.component.html',
  styleUrls: ['./account.component.scss'],
  animations: [Animations.fadeInOut]
})
export class AccountComponent extends ExitAnimatingComponent implements OnInit {
  fb = new FormBuilder();
  accountGroup: FormGroup = this.fb.group({
    firstName: [ '', [Validators.required, Validators.maxLength(100)]],
    lastName: [ '', [Validators.required, Validators.maxLength(100)]],
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ],
    confirmPassword: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });
  activationGroup: FormGroup = this.fb.group({
    membershipCode: [ '', [Validators.required]],
  });

  constructor(private readonly accountService: AccountService,
    private readonly errorService: ErrorService,
    private readonly navigationService: NavigationService,
    private readonly snackbarService: SnackBarService) {
      super();
     }

  ngOnInit() {
    this.loadCurrentProfile();
  }

  activationAttempt(): void {
    this.accountService
      .attemptActivation()
      .subscribe((response) => {
        // TODO
    },
    (err: Error) => {
      this.errorService.openErrorDialog({
        message: err.message || 'Premium memberships are not yet available!',
        name: err.name,
        stack: err.stack
      });
    });
  }

  attemptEdit(): void {
    const user = this.accountGroup.value;
    this.accountService.saveEdit(user).subscribe((response) => {
        this.snackbarService.openSnackBar(`Account changes saved!`);
        this.navigationService.navigate(HOME_URL);
    },
    (res) => {
      this.errorService.openErrorDialog({
        message: res.error.message || 'Could not save the changes to your account!',
        name: res.error.name,
        stack: res.error.error
      });
    });
  }

  loadCurrentProfile(): void {
    this.accountService.getLoggedInUser()
    .subscribe((profile: BasicProfile) => {
        this.accountGroup.patchValue(
          { firstName: profile.first_name,
            lastName: profile.last_name,
            email: profile.email
          });
      },
    (res) => {
        this.errorService.openErrorDialog({
          message: res.error.message || 'Could not load your account details!',
          name: res.error.name,
          stack: res.error.stack
        });
    }
    );
  }

}
