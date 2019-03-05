import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { map } from 'rxjs/operators';
import { Observable, throwError } from 'rxjs';

import { BasicProfile } from '@app/shared/models/basic-profile';
import { environment } from '@env/environment';
import { NewCredentials } from '@app/shared/models/new-credentials';
import { PasswordChangeCredentials } from '@account/models/password-change-credentials';

const accountsUrl = `${environment.apiEndpoint}/accounts`;

@Injectable({
  providedIn: 'root'
})
export class AccountService {

  constructor(private http: HttpClient) { }

  attemptActivation (): Observable<any> {
    return throwError(new Error(`Premium memberships are not yet supported!`));
  }

  changePassword (creds: PasswordChangeCredentials): Observable<any> {
    return this.http.post(`${accountsUrl}/reset-password/change-password/${creds.routeID}`, creds.user);
  }

  checkValidPasswordChangeRequest (routeID: string): Observable<any> {
    return this.http.get(`${accountsUrl}/reset-password/validate-change-request/${routeID}`);
  }

  getLoggedInUser (): Observable<BasicProfile> {
    return this.http.get(`${accountsUrl}/user`)
      .pipe(map((res: any) => res.data));
  }

  requestPasswordChange (email: string): Observable<any> {
    console.log(email);
    return this.http.post(`${accountsUrl}/reset-password/request-password-change`, {email: email});
  }

  saveEdit (user: NewCredentials): Observable<any> {
    return this.http.patch(`${accountsUrl}/user`, user);
  }

}
