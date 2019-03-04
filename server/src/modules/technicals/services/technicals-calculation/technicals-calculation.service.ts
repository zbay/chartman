import { Injectable } from '@nestjs/common';

import { high14 } from '../functions/high-14';
import { low14 } from '../functions/low-14';
import { standardDeviation } from '../functions/standard-deviation';
import { TechnicalSeriesContainer } from '@technicals/interfaces/technical-series-container';
import { ThirdPartyApi } from '../enums/third-party-api.enum';

@Injectable()
export class TechnicalsCalculationService {

    standardizeSeriesWithTechnicals(api: ThirdPartyApi, seriesData: any): TechnicalSeriesContainer {
        return this.standardizeOutput(this.standardizeInput(api, seriesData));
    }

    private standardizeInput(api: ThirdPartyApi, data: any): TechnicalSeriesContainer {
        if (api === ThirdPartyApi.ALPHA_VANTAGE) {
            const series = data['Time Series (Daily)'];
            const chartKeys = [...Object.keys(series)];
            data.series = chartKeys.map((dateKey) => {
              const day = series[dateKey];
              day.time = Number(new Date(dateKey));
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
        const slowWindow = 26;
        const fastWindow = 12;
        const highLowWindow = 14;
        const movingAvgWindow = 3;
        const chartData: any[] = data.series;
        chartData[chartData.length - (slowWindow * 2)].SEMA = chartData[chartData.length - (slowWindow * 2)].close;
        chartData[chartData.length - (slowWindow + fastWindow)].FEMA = chartData[chartData.length - (slowWindow + fastWindow)].close;
        for (let i = chartData.length - (slowWindow * 2) + 1; i < chartData.length; i++) {
          chartData[i].SEMA = chartData[i].close * (2 / (slowWindow + 1)) + chartData[i - 1].SEMA * (1 - (2 / (slowWindow + 1)));
        }
        for (let i = chartData.length - (slowWindow + fastWindow) + 1; i < chartData.length; i++) {
          chartData[i].FEMA = chartData[i].close * (2 / (fastWindow + 1)) + chartData[i - 1].FEMA * (1 - (2 / (fastWindow + 1)));
        }
        for (let i = chartData.length - slowWindow; i < chartData.length; i++) {
          const stdDev = standardDeviation(chartData.slice(i - slowWindow, i));
          chartData[i].resistance = (2 * stdDev) + (+chartData[i].close);
          chartData[i].support = +chartData[i].close - (2 * stdDev);
        }

        // oscillators processing
        for (let i = chartData.length - (highLowWindow * 3); i < chartData.length; i++) {
          chartData[i].diff = chartData[i].close - chartData[i - 1].close;
        }
        for (let i = chartData.length - (highLowWindow * 2 + movingAvgWindow - 1); i < chartData.length; i++) {
          chartData[i].H14 = high14(chartData, i);
          chartData[i].L14 = low14(chartData, i);
          chartData[i].PER_K = (chartData[i].close - chartData[i].L14) / (chartData[i].H14 - chartData[i].L14) * 100;
        }
        for (let i = chartData.length - (highLowWindow * 2); i < chartData.length; i++) {
          chartData[i].PER_D = ((chartData[i - 2].PER_K + chartData[i - 1].PER_K + chartData[i].PER_K) / 3);
          let numGains = 0;
          let sumGains = 0;
          let numLosses = 0;
          let sumLosses = 0;
          for (let j = i - highLowWindow + 1; j <= i; j++) {
            if (chartData[j].diff > 0) {
              numGains++;
              sumGains += chartData[j].diff;
            }
            if (chartData[j].diff < 0) {
              numLosses++;
              sumLosses -= chartData[j].diff;
            }
          }
          numGains = numGains || 1;
          numLosses = numLosses || 1;
          chartData[i].RS = (sumGains / numGains) / (sumLosses / numLosses);
          chartData[i].RSI = 100 - (100 / (1 + chartData[i].RS));
          if (chartData[i].RSI > 100) {
            chartData[i].RSI = 100;
          }
        }
        data.series = chartData.slice(-26);
        return data;
    }
}
