import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

import * as jwtDecode from 'jwt-decode';

import { BehaviorSubject } from 'rxjs';
import { map } from 'rxjs/operators';

import { Credentials } from '@common/models/credentials';
import { environment } from '@env/environment';
import { ErrorService } from '../error/error.service';
import { NewCredentials } from '@common/models/new-credentials';
import { SnackBarService } from '../snack-bar/snack-bar.service';

const accountsURL = `${environment.apiEndpoint}/accounts`;

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private _isLoggedIn  = new BehaviorSubject<boolean>(false);
  isLoggedIn$ = this._isLoggedIn.asObservable();

  static decodeUrlForRouter(url: string): string[] {
    return decodeURI(url).split('/');
  }

  static getDecodedToken(): any {
    return jwtDecode(AuthService.getToken());
  }

  static getToken(): string {
    return localStorage.getItem('access_token');
  }

  static tokenNotExpired(): boolean {
    const token = AuthService.getDecodedToken();
    return token.exp > (Date.now() / 1000);
  }

  constructor(
    private readonly errorService: ErrorService,
    private http: HttpClient,
    private router: Router,
    private readonly snackbarService: SnackBarService) {}

  isLoggedIn(): boolean {
    const loggedIn = !localStorage.getItem('access_token') ? false : AuthService.tokenNotExpired();
    this._isLoggedIn.next(loggedIn);
    return loggedIn;
  }

  attemptAutoLogin(returnUrl: string): void {
    if (this.isLoggedIn()) {
      this.navigateIn(returnUrl);
    }
  }

  login(credentials: Credentials, returnUrl: string): void {
    this.http.post(`${accountsURL}/login`, credentials)
      .pipe(map((res: any) => res.data))
      .subscribe((token: string) => {
        this.setToken(token);
        this.navigateIn(returnUrl);
      },
      (res) => {
        this.setLoggedIn(false);
        const errorOptions = { message: `Login failed!`, stack: null, name: null };
        if (res.error) {
          errorOptions.message = res.error.message;
          errorOptions.name = res.error.name;
          errorOptions.stack = res.error.stack;
        }
        this.errorService.openErrorDialog(errorOptions);
      });
  }

  signup(credentials: NewCredentials, returnUrl: string): void {
    this.http.post(`${accountsURL}/user`, credentials)
      .pipe(map((res: any) => res.data))
      .subscribe((token: string) => {
        this.setToken(token);
        this.snackbarService.openSnackBar('Account created! Welcome.');
        this.navigateIn(returnUrl);
      },
      (res) => {
        this.setLoggedIn(false);
        this.errorService.serverSideErrorMessageDisplayHandler(res.error, `Signup failed!`);
      });
  }

    // take the newly logged in user into the site. To their return URL, if specified. Otherwise, the tracker list.
    private navigateIn(returnUrl?: string): void {
      returnUrl
        ? this.router.navigate(AuthService.decodeUrlForRouter(returnUrl))
        : this.router.navigate(['charting/stocks']);
    }

  //
  // getId(): string{
  //   return jwtDecode(this.getToken()).sub;
  // }
  //
  //
  isAdmin(): boolean {
    return jwtDecode(AuthService.getToken()).scope.indexOf('admin') > -1;
  }

  isPremium(): boolean {
    return jwtDecode(AuthService.getToken()).scope.indexOf('premium') > -1;
  }

  logout(): void {
    localStorage.removeItem('access_token');
    this._isLoggedIn.next(false);
    this.router.navigate(['/']);
  }

  setLoggedIn(loggedIn: boolean): void {
    this._isLoggedIn.next(loggedIn);
  }

  setToken(token: string): void {
    localStorage.setItem('access_token', token);
    this.setLoggedIn(true);
  }
}
