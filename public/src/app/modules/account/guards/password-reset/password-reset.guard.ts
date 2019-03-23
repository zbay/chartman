import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, Router } from '@angular/router';

import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';

import { AccountService } from '@account/services/account-service';

@Injectable({
  providedIn: 'root'
})
export class PasswordResetGuard implements CanActivate {

  constructor(private accountService: AccountService, private router: Router) {}

  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {
      return this.accountService.checkValidPasswordChangeRequest(next.params.route_id)
      .pipe(map((response: any) => response.data),
        map((isValid: boolean) => {
          if (isValid) {
            return true;
          } else {
            this.router.navigate(['account', 'forgot-password']);
            return false;
          }
        }));
  }
}
