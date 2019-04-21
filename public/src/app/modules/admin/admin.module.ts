import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from '@admin/admin-routing.module';
import { SharedModule } from '@shared/shared.module';
import { UserManagementComponent } from '@app/modules/admin/components/user-management/user-management.component';
import { UserListComponent } from '@admin/components/user-list/user-list.component';
import { RoleNamesPipe } from '@app/modules/admin/pipes/role-names/role-names.pipe';

@NgModule({
  declarations: [UserManagementComponent, UserListComponent, RoleNamesPipe],
  imports: [
    AdminRoutingModule,
    CommonModule,
    SharedModule
  ]
})
export class AdminModule { }
