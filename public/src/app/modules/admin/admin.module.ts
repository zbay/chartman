import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from '@admin/admin-routing.module';
import { UserManagementComponent } from '@admin/user-management/user-management.component';
import { UserListComponent } from '@admin/user-list/user-list.component';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  declarations: [UserManagementComponent, UserListComponent],
  imports: [
    AdminRoutingModule,
    CommonModule,
    SharedModule
  ]
})
export class AdminModule { }
