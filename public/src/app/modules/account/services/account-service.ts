import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

import { map } from 'rxjs/operators';
import { Observable, throwError } from 'rxjs';

import { BasicProfile } from '@app/common/interfaces/basic-profile.interface';
import { environment } from '@env/environment';
import { NewCredentials } from '@app/common/interfaces/new-credentials.interface';
import { PasswordChangeCredentials } from '@account/models/password-change-credentials';
import { objToParams } from '@app/common/functions/obj-to-params';
import { SearchablePaginationOptions } from '@app/common/interfaces/searchable-pagination-options.enum';

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

  getAllUsers (options: SearchablePaginationOptions): Observable<any> {
    return this.http.get(`${accounts_url}/user/search`, { params: objToParams(options) })
      .pipe(map((res: any) => res.data));
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
