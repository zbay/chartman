import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AccountRoutingModule } from '@account/account-routing.module';
import { AccountComponent } from '@account/components/account/account.component';
import { ForgotPasswordComponent } from '@account/components/forgot-password/forgot-password.component';
import { SharedModule } from '../shared/shared.module';
import { ResetPasswordComponent } from '@account/components/reset-password/reset-password.component';

@NgModule({
  declarations: [AccountComponent, ForgotPasswordComponent, ResetPasswordComponent],
  imports: [
    AccountRoutingModule,
    CommonModule,
    SharedModule
  ]
})
export class AccountModule { }
