import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';

import { AccountService } from '@account/services/account-service';
import { Animations } from '@common/animations/animations';
import { BasicProfile } from '@app/common/interfaces/basic-profile.interface';
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
  account_group: FormGroup = this.fb.group({
    first_name: [ '', [Validators.required, Validators.maxLength(100)]],
    last_name: [ '', [Validators.required, Validators.maxLength(100)]],
    email: [ '', [Validators.required, Validators.email] ],
    password: [ '', [Validators.required, Validators.minLength(8)] ],
    confirm_password: [ '', [Validators.required, MatchingPasswordsValidator('password')] ]
  });
  activation_group: FormGroup = this.fb.group({
    membership_code: [ '', [Validators.required]],
  });

  constructor(private readonly account_service: AccountService,
    private readonly error_service: ErrorService,
    private readonly navigation_service: NavigationService,
    private readonly snackbar_service: SnackBarService) {
      super();
    }

  ngOnInit() {
    this.loadCurrentProfile();
  }

  activationAttempt(): void {
    this.account_service
      .attemptActivation()
      .subscribe((response) => {
        // TODO
    },
    (err: Error) => {
      this.error_service.openErrorDialog({
        message: err.message || 'Premium memberships are not yet available!',
        name: err.name,
        stack: err.stack
      });
    });
  }

  attemptEdit(): void {
    const user = this.account_group.value;
    this.account_service.saveEdit(user).subscribe((response) => {
        this.snackbar_service.openSnackBar(`Account changes saved!`);
        this.navigation_service.navigate(HOME_URL);
    },
    (res) => {
      this.error_service.openErrorDialog({
        message: res.error.message || 'Could not save the changes to your account!',
        name: res.error.name,
        stack: res.error.error
      });
    });
  }

  loadCurrentProfile(): void {
    this.account_service.getLoggedInUser()
    .subscribe((profile: BasicProfile) => {
        this.account_group.patchValue(
          { first_name: profile.first_name,
            last_name: profile.last_name,
            email: profile.email
          });
      },
    (res) => {
        this.error_service.openErrorDialog({
          message: res.error.message || 'Could not load your account details!',
          name: res.error.name,
          stack: res.error.stack
        });
    }
    );
  }

}
