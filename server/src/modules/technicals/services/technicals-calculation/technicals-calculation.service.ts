import { Injectable } from '@nestjs/common';

import { high14 } from '../functions/high-14';
import { low14 } from '../functions/low-14';
import { standardDeviation } from '../functions/standard-deviation';
import { TechnicalSeriesContainer } from '@technicals/interfaces/technical-series-container';
import { ThirdPartyApi } from '../enums/third-party-api.enum';

@Injectable()
export class TechnicalsCalculationService {

    standardizeSeriesWithTechnicals(api: ThirdPartyApi, series_data: any): TechnicalSeriesContainer {
        return this.standardizeOutput(this.standardizeInput(api, series_data));
    }

    private standardizeInput(api: ThirdPartyApi, data: any): TechnicalSeriesContainer {
        if (api === ThirdPartyApi.ALPHA_VANTAGE) {
            const series = data['Time Series (Daily)'];
            const chart_keys = [...Object.keys(series)];
            data.series = chart_keys.map((date_key) => {
              const day = series[date_key];
              day.time = Number(new Date(date_key));
              day.open = Number(day['1. open']).toFixed(2);
              delete day['1. open'];
              day.close = Number(day['4. close']).toFixed(2);
              delete day['4. close'];
              day.high = Number(day['2. high']).toFixed(2);
              delete day['2. high'];
              day.low = Number(day['3. low']).toFixed(2);
              delete day['3. low'];
              day.volume = Number(day['5. volume']);
              delete day['5. volume'];
              return day;
            }).reverse();
            delete data['Time Series (Daily)'];
        } else if (api === ThirdPartyApi.CRYPTO_COMPARE) {
            const series = data[`Data`];
            data.series = series.map((datum) => {
                datum.time *= 1000;
                datum.volume = 1 * (datum.volumeto);
                delete datum.volumeto;
                delete datum.volumefrom;
                return datum;
              }).reverse();
            delete data[`Data`];
        }
        return data;
    }

    standardizeOutput(data): TechnicalSeriesContainer {
        const slow_window = 26;
        const fast_window = 12;
        const highLowWindow = 14;
        const movingAvgWindow = 3;
        const chart_data: any[] = data.series;
        chart_data[chart_data.length - (slow_window * 2)].SEMA = chart_data[chart_data.length - (slow_window * 2)].close;
        chart_data[chart_data.length - (slow_window + fast_window)].FEMA = chart_data[chart_data.length - (slow_window + fast_window)].close;
        for (let i = chart_data.length - (slow_window * 2) + 1; i < chart_data.length; i++) {
          chart_data[i].SEMA = chart_data[i].close * (2 / (slow_window + 1)) + chart_data[i - 1].SEMA * (1 - (2 / (slow_window + 1)));
        }
        for (let i = chart_data.length - (slow_window + fast_window) + 1; i < chart_data.length; i++) {
          chart_data[i].FEMA = chart_data[i].close * (2 / (fast_window + 1)) + chart_data[i - 1].FEMA * (1 - (2 / (fast_window + 1)));
        }
        for (let i = chart_data.length - slow_window; i < chart_data.length; i++) {
          const stdDev = standardDeviation(chart_data.slice(i - slow_window, i));
          chart_data[i].resistance = (2 * stdDev) + (+chart_data[i].close);
          chart_data[i].support = +chart_data[i].close - (2 * stdDev);
        }

        // oscillators processing
        for (let i = chart_data.length - (highLowWindow * 3); i < chart_data.length; i++) {
          chart_data[i].diff = chart_data[i].close - chart_data[i - 1].close;
        }
        for (let i = chart_data.length - (highLowWindow * 2 + movingAvgWindow - 1); i < chart_data.length; i++) {
          chart_data[i].H14 = high14(chart_data, i);
          chart_data[i].L14 = low14(chart_data, i);
          chart_data[i].PER_K = (chart_data[i].close - chart_data[i].L14) / (chart_data[i].H14 - chart_data[i].L14) * 100;
        }
        for (let i = chart_data.length - (highLowWindow * 2); i < chart_data.length; i++) {
          chart_data[i].PER_D = ((chart_data[i - 2].PER_K + chart_data[i - 1].PER_K + chart_data[i].PER_K) / 3);
          let num_gains = 0;
          let sum_gains = 0;
          let num_losses = 0;
          let sum_losses = 0;
          for (let j = i - highLowWindow + 1; j <= i; j++) {
            if (chart_data[j].diff > 0) {
              num_gains++;
              sum_gains += chart_data[j].diff;
            }
            if (chart_data[j].diff < 0) {
              num_losses++;
              sum_losses -= chart_data[j].diff;
            }
          }
          num_gains = num_gains || 1;
          num_losses = num_losses || 1;
          chart_data[i].RS = (sum_gains / num_gains) / (sum_losses / num_losses);
          chart_data[i].RSI = 100 - (100 / (1 + chart_data[i].RS));
          if (chart_data[i].RSI > 100) {
            chart_data[i].RSI = 100;
          }
        }
        data.series = chart_data.slice(-26);
        return data;
    }
}
