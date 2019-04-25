import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from '@admin/admin-routing.module';
import { SharedModule } from '@shared/shared.module';
import { UserListComponent } from '@admin/components/user-list/user-list.component';
import { RoleNamesPipe } from '@app/modules/admin/pipes/role-names/role-names.pipe';
import { AdminComponent } from './components/admin/admin.component';

import { CurrencyListComponent } from './components/currency-list/currency-list.component';
import { StockListComponent } from './components/stock-list/stock-list.component';
import { ErrorListComponent } from './components/error-list/error-list.component';

@NgModule({
  // tslint:disable-next-line:max-line-length
  declarations: [UserListComponent, RoleNamesPipe, AdminComponent, CurrencyListComponent, StockListComponent, ErrorListComponent],
  imports: [
    AdminRoutingModule,
    CommonModule,
    SharedModule
  ]
})
export class AdminModule { }
