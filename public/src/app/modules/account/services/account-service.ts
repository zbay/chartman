import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { map } from 'rxjs/operators';
import { Observable, throwError } from 'rxjs';

import { BasicProfile } from '@common/models/basic-profile';
import { environment } from '@env/environment';
import { NewCredentials } from '@common/models/new-credentials';
import { PasswordChangeCredentials } from '@account/models/password-change-credentials';

const accounts_url = `${environment.api_endpoint}/accounts`;

@Injectable({
  providedIn: 'root'
})
export class AccountService {

  constructor(private http: HttpClient) { }

  attemptActivation (): Observable<any> {
    return throwError(new Error(`Premium memberships are not yet supported!`));
  }

  changePassword (creds: PasswordChangeCredentials): Observable<any> {
    return this.http.post(`${accounts_url}/reset-password/change-password/${creds.route_id}`, creds.user);
  }

  checkValidPasswordChangeRequest (route_id: string): Observable<any> {
    return this.http.get(`${accounts_url}/reset-password/validate-change-request/${route_id}`);
  }

  getLoggedInUser (): Observable<BasicProfile> {
    return this.http.get(`${accounts_url}/user`)
      .pipe(map((res: any) => res.data));
  }

  requestPasswordChange (email: string): Observable<any> {
    return this.http.post(`${accounts_url}/reset-password/request-password-change`, {email: email});
  }

  saveEdit (user: NewCredentials): Observable<any> {
    return this.http.patch(`${accounts_url}/user`, user);
  }

}
