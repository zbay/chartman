import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AdminComponent } from './components/admin/admin.component';
import { CurrencyListComponent } from './components/currency-list/currency-list.component';
import { ErrorListComponent } from './components/error-list/error-list.component';
import { ExitAnimationGuard } from '@shared/guards/exit-animation/exit-animation.guard';
import { StockListComponent } from './components/stock-list/stock-list.component';
import { UserListComponent } from './components/user-list/user-list.component';

const USERS_RELATIVE_PATH = `users`;
const CURRENCIES_RELATIVE_PATH = `currencies`;
const STOCKS_RELATIVE_PATH = `stocks`;
const ERRORS_RELATIVE_PATH = `errors`;

const routes: Routes = [
  { path: '',
    component: AdminComponent,
    children: [
        { path: '',
          pathMatch: 'full',
          redirectTo: 'users'
        },
        { path: USERS_RELATIVE_PATH,
          pathMatch: 'full',
          component: UserListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: CURRENCIES_RELATIVE_PATH,
          pathMatch: 'full',
          component: CurrencyListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: STOCKS_RELATIVE_PATH,
          pathMatch: 'full',
          component: StockListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: ERRORS_RELATIVE_PATH,
          pathMatch: 'full',
          component: ErrorListComponent,
          canDeactivate: [ExitAnimationGuard]
        }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
