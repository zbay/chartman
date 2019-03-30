import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AboutComponent } from '@app/components/about/about.component';
import { AuthGuard } from '@app/guards/auth/auth.guard';
import { ExitAnimationGuard } from '@shared/guards/exit-animation/exit-animation.guard';
import { LoginComponent } from '@app/components/login/login.component';
import { LogoutComponent } from '@app/components/logout/logout.component';
import { NotFoundComponent } from '@app/modules/shared/components/not-found/not-found.component';
import { Role } from './common/enums/role.enum';

const routes: Routes = [
  { path: '',
    pathMatch: 'full',
    redirectTo: 'login'
  },
  { path: 'about',
    component: AboutComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  { path: 'login',
    component: LoginComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  { path: 'logout',
    component: LogoutComponent
  },
  { path: 'account',
    loadChildren: '@account/account.module#AccountModule'
  },
  {
    path: 'admin',
    canActivate: [AuthGuard],
    loadChildren: '@admin/admin.module#AdminModule',
    data: { roles: [Role.ADMIN] }
  },
  { path: 'charting',
    canActivate: [AuthGuard],
    loadChildren: '@app/modules/charts/charts.module#ChartsModule'
  },
  {
    path: '**',
    component: NotFoundComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
      scrollPositionRestoration: 'enabled' // scroll to top on route change
    })],
  exports: [RouterModule]
})
export class AppRoutingModule { }
