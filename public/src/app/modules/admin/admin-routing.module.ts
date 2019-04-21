import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { UserManagementComponent } from '@app/modules/admin/components/user-management/user-management.component';
import { ExitAnimationGuard } from '@shared/guards/exit-animation/exit-animation.guard';

const routes: Routes = [
  { path: '',
    pathMatch: 'full',
    redirectTo: 'users'
  },
  { path: 'users',
    pathMatch: 'full',
    component: UserManagementComponent,
    canDeactivate: [ExitAnimationGuard]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
