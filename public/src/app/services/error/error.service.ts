import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { MatDialog, MatDialogConfig } from '@angular/material';

import * as jwtDecode from 'jwt-decode';

import { catchError } from 'rxjs/operators';
import { of, OperatorFunction } from 'rxjs';

import { environment } from '@env/environment';
import { ErrorDialogComponent } from '@app/modules/shared/components/error-dialog/error-dialog.component';
import { LoggedError } from './logged-error';

@Injectable({
  providedIn: 'root'
})
export class ErrorService {

  constructor(private dialog: MatDialog,
    private http: HttpClient) { }

  openErrorDialog(error: Error) {
    const dialogConfig: MatDialogConfig =  {
      disableClose: false,
      autoFocus: true,
      minHeight: '20%',
      maxHeight: '60%',
      minWidth: '40%',
      maxWidth: '90%',
      panelClass: 'chartman-theme',
      data: {
        message: (error ? error.message : null)
          || 'Chartman is experiencing technical difficulties. Please try again later.'
      }
    };
    this.dialog.open(ErrorDialogComponent, dialogConfig);
    this.sendErrorToDB(error);
  }

  sendErrorToDB(error: Error): void {
    const user_id = jwtDecode(localStorage.getItem('access_token')).sub;
    const url = window.location.href;
    const logged_error: LoggedError = { error: error, user_id, url };
    this.http.post(`${environment.api_endpoint}/error`, logged_error).subscribe();
  }

  serverSideErrorMessageDisplayHandler(error: Error, default_message: string = `Unknown error`) {
    const sent_error = error || { message: default_message, name: `Error`, stack: null };
    this.openErrorDialog(sent_error);
  }

  standardSubscriptionErrorHandler(output: any): OperatorFunction<{}, any> {
    return catchError((err: Error) => {
      this.openErrorDialog(err);
      return of(output);
    });
  }
}
