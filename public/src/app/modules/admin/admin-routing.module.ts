import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AdminComponent } from './components/admin/admin.component';
import { CurrencyListComponent } from './components/currency-list/currency-list.component';
import { ExitAnimationGuard } from '@shared/guards/exit-animation/exit-animation.guard';
import { UserListComponent } from './components/user-list/user-list.component';
import { StockListComponent } from './components/stock-list/stock-list.component';
import { ErrorListComponent } from './components/error-list/error-list.component';

const routes: Routes = [
  { path: '',
    component: AdminComponent,
    children: [
        { path: '',
          pathMatch: 'full',
          redirectTo: 'users'
        },
        { path: 'users',
          pathMatch: 'full',
          component: UserListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: 'currencies',
          pathMatch: 'full',
          component: CurrencyListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: 'stocks',
          pathMatch: 'full',
          component: StockListComponent,
          canDeactivate: [ExitAnimationGuard]
        },
        { path: 'errors',
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
