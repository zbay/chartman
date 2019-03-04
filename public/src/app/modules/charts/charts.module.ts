import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ChartsRoutingModule } from '@charts/charts-routing.module';
import { CurrenciesComponent } from '@charts/components/currencies/currencies.component';
import { MyCurrencyListComponent } from '@charts/components/my-currency-list/my-currency-list.component';
import { MyStockListComponent } from '@charts/components/my-stock-list/my-stock-list.component';
import { NewCurrencyPairTrackerComponent } from '@charts/components/new-currency-pair-tracker/new-currency-pair-tracker.component';
import { NewStockTrackerComponent } from '@charts/components/new-stock-tracker/new-stock-tracker.component';
import { SharedModule } from '@app/modules/shared/shared.module';
import { StocksComponent } from '@charts/components/stocks/stocks.component';
import { TechnicalsChartComponent } from './components/technicals-chart/technicals-chart.component';

@NgModule({
  imports: [
    CommonModule,
    ChartsRoutingModule,
    SharedModule
  ],
  declarations: [CurrenciesComponent, MyCurrencyListComponent, NewCurrencyPairTrackerComponent,
    StocksComponent, NewStockTrackerComponent, MyStockListComponent, TechnicalsChartComponent]
})
export class ChartsModule { }
