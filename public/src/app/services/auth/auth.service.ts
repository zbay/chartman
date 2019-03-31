import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import * as jwt_decode from 'jwt-decode';

import { BehaviorSubject } from 'rxjs';
import { map } from 'rxjs/operators';

import { Credentials } from '@common/models/credentials';
import { environment } from '@env/environment';
import { ErrorService } from '../error/error.service';
import { NewCredentials } from '@common/models/new-credentials';
import { Role } from '@app/common/enums/role.enum';
import { SnackBarService } from '../snack-bar/snack-bar.service';

const accounts_url = `${environment.api_endpoint}/accounts`;

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private _is_logged_in  = new BehaviorSubject<boolean>(false);
  private _roles = new BehaviorSubject<Role[]>([]);
  is_logged_in$ = this._is_logged_in.asObservable();
  roles$ = this._roles.asObservable();

  static decodeUrlForRouter(url: string): string[] {
    return decodeURI(url).split('/');
  }

  static getDecodedToken(): any {
    return jwt_decode(AuthService.getToken());
  }

  static getToken(): string {
    return localStorage.getItem('access_token');
  }

  static tokenNotExpired(): boolean {
    const token = AuthService.getDecodedToken();
    return token.exp > (Date.now() / 1000);
  }

  constructor(
    private readonly error_service: ErrorService,
    private readonly http: HttpClient,
    private readonly router: Router,
    private readonly snackbar_service: SnackBarService) {}

  hasAnyRole(roles: Role[] = [Role.FREE]): boolean {
    const token = AuthService.getDecodedToken();
    return token.scope.some((token_role) => { // test if there is any overlap between token role and required role sets
      return roles.some((role) => {
        return role === token_role;
      });
    });
  }

  isLoggedIn(): boolean {
    const logged_in = !localStorage.getItem('access_token') ? false : AuthService.tokenNotExpired();
    this._is_logged_in.next(logged_in);
    return logged_in;
  }

  attemptAutoLogin(return_url: string): void {
    if (this.isLoggedIn()) {
      this.navigateIn(return_url);
    }
  }

  login(credentials: Credentials, return_url: string): void {
    this.http.post(`${accounts_url}/login`, credentials)
      .pipe(map((res: any) => res.data))
      .subscribe((token: string) => {
        this.setToken(token);
        this.navigateIn(return_url);
      },
      (res) => {
        this.setLoggedIn(false);
        const errorOptions = { message: `Login failed!`, stack: null, name: null };
        if (res.error) {
          errorOptions.message = res.error.message;
          errorOptions.name = res.error.name;
          errorOptions.stack = res.error.stack;
        }
        this.error_service.openErrorDialog(errorOptions);
      });
  }

  signup(credentials: NewCredentials, return_url: string): void {
    this.http.post(`${accounts_url}/user`, credentials)
      .pipe(map((res: any) => res.data))
      .subscribe((token: string) => {
        this.setToken(token);
        this.snackbar_service.openSnackBar('Account created! Welcome.');
        this.navigateIn(return_url);
      },
      (res) => {
        this.setLoggedIn(false);
        this.error_service.serverSideErrorMessageDisplayHandler(res.error, `Signup failed!`);
      });
  }

    // take the newly logged in user into the site. To their return URL, if specified. Otherwise, the tracker list.
    private navigateIn(return_url?: string): void {
      return_url
        ? this.router.navigate(AuthService.decodeUrlForRouter(return_url))
        : this.router.navigate(['charting/stocks']);
    }

  //
  // getId(): string{
  //   return jwtDecode(this.getToken()).sub;
  // }
  //
  //
  isAdmin(): boolean {
    return jwt_decode(AuthService.getToken()).scope.indexOf('admin') > -1;
  }

  isPremium(): boolean {
    return jwt_decode(AuthService.getToken()).scope.indexOf('premium') > -1;
  }

  logout(): void {
    this.setRoles(false);
    this._is_logged_in.next(false);
    localStorage.removeItem('access_token');
    this.router.navigate(['/']);
  }

  setLoggedIn(logged_in: boolean): void {
    this._is_logged_in.next(logged_in);
  }

  setRoles(has_token: boolean): void {
    console.log(AuthService.getDecodedToken().scope);
    if (has_token) {
      this._roles.next(AuthService.getDecodedToken().scope);
    } else {
      this._roles.next([]);
    }
  }

  setToken(token: string): void {
    localStorage.setItem('access_token', token);
    this.setLoggedIn(true);
    this.setRoles(true);
  }
}
