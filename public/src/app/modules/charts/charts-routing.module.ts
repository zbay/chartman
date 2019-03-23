import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { CurrenciesComponent } from '@charts/components/currencies/currencies.component';
import { ExitAnimationGuard } from '../shared/guards/exit-animation/exit-animation.guard';
import { StocksComponent } from './components/stocks/stocks.component';
import { TechnicalsChartComponent } from './components/technicals-chart/technicals-chart.component';

const routes: Routes = [
  { path: '',
    pathMatch: 'full',
    redirectTo: 'stocks'
  },
  { path: 'currencies/chart',
    pathMatch: 'full',
    component: TechnicalsChartComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  { path: 'stocks/chart/:stock_id',
    pathMatch: 'full',
    component: TechnicalsChartComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  { path: 'currencies',
    component: CurrenciesComponent,
    canDeactivate: [ExitAnimationGuard]
  },
  { path: 'stocks',
    component: StocksComponent,
    canDeactivate: [ExitAnimationGuard]
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ChartsRoutingModule { }
