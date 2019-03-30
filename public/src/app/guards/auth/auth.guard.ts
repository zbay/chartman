import { ActivatedRouteSnapshot, CanActivate, RouterStateSnapshot, Router } from '@angular/router';
import { Injectable } from '@angular/core';

import { Observable } from 'rxjs';

import { AuthService } from '@app/services/auth/auth.service';
import { ErrorService } from '@app/services/error/error.service';
import { Role } from '@app/common/enums/role.enum';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {

  constructor(private readonly auth_service: AuthService,
              private readonly error_service: ErrorService,
              private readonly router: Router) {}

  canActivate(next: ActivatedRouteSnapshot, state: RouterStateSnapshot)
    : Observable<boolean> | Promise<boolean> | boolean {
    const roles = next.data ? next.data.roles : [Role.FREE];
    if (!this.auth_service.isLoggedIn()) {
      this.router.navigate(['/login'], { queryParams: { return_url: state.url }});
      return false;
    }
    if (this.auth_service.hasAnyRole(roles)) {
      return true;
    } else {
      this.router.navigate(['/']);
      this.error_service.openErrorDialog({
        name: `Permissions Error`,
        message: `You lack the permissions to view the last URL you tried. If this is incorrect, try logging out and logging back in`
      });
      return false;
    }
  }
}
