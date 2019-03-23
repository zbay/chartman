import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AccountComponent } from './components/account/account.component';
import { ForgotPasswordComponent } from '@account/components/forgot-password/forgot-password.component';
import { ResetPasswordComponent } from '@account/components/reset-password/reset-password.component';
import { AuthGuard } from '@app/guards/auth/auth.guard';
import { ExitAnimationGuard } from '../shared/guards/exit-animation/exit-animation.guard';
import { PasswordResetGuard } from '@account/guards/password-reset/password-reset.guard';

const routes: Routes = [
  {
    path: '',
    pathMatch: 'full',
    redirectTo: 'manage'
  },
  {
    path: 'forgot-password',
    component: ForgotPasswordComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  {
    path: 'manage',
    canActivate: [AuthGuard],
    component: AccountComponent,
    canDeactivate: [ExitAnimationGuard] },
  {
    path: 'reset-password/:route_id',
    canActivate: [PasswordResetGuard],
    component: ResetPasswordComponent,
    canDeactivate: [ExitAnimationGuard]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AccountRoutingModule { }
