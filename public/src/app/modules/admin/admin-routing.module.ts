import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { UserManagementComponent } from '@app/modules/admin/user-management/user-management.component';

const routes: Routes = [
  { path: '',
    pathMatch: 'full',
    redirectTo: 'users'
  },
  { path: 'users',
  pathMatch: 'full',
  component: UserManagementComponent
},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
