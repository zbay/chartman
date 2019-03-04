import { FormControl } from '@angular/forms';

export function MatchingPasswordsValidator(passwordKey: string) {
  return (control: FormControl): {[key: string]: any} => {
    if (!control || !control.parent || !control.parent.controls) {
      return {};
    }

    const password1 = control.parent.controls[passwordKey].value;

    if (control.value !== password1) {
      return {
        mismatchedPasswords: true
      };
    }
  };
}
