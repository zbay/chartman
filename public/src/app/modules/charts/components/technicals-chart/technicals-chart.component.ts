import { ActivatedRoute } from '@angular/router';
import { Component, OnInit, ViewEncapsulation } from '@angular/core';

import * as d3 from 'd3';

import { fromEvent, combineLatest } from 'rxjs';
import { debounceTime, map, distinctUntilChanged, filter } from 'rxjs/operators';

import { Animations } from '@common/animations/animations';
import { ChartDataService } from '@charts/services/chart-data/chart-data.service';
import { CurrencyPairChartData } from '@charts/models/currency-pair-chart-data';
import { ErrorService } from '@app/services/error/error.service';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';
import { StockChartData } from '@charts/models/stock-chart-data';
import { TechnicalsChartType } from '@app/modules/charts/enums/technicals-chart-type.enum';
import { TechnicalDataPoint } from '@charts/models/technical-data-point';

const months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'];

@Component({
  encapsulation: ViewEncapsulation.None,
  selector: 'app-technicals-chart',
  templateUrl: './technicals-chart.component.html',
  styleUrls: ['./technicals-chart.component.scss'],
  animations: [Animations.fadeInOut]
})
export class TechnicalsChartComponent extends ExitAnimatingComponent implements OnInit {
  abbreviatedLabel = ``;
  chartData: TechnicalDataPoint[];
  chartType = TechnicalsChartType.MACD;
  fullLabel = ``;
  isLoading = true;
  isStock = false;
  readonly TechnicalsChartType = TechnicalsChartType;

  constructor(private readonly chartDataService: ChartDataService,
    private readonly errorService: ErrorService,
    private readonly route: ActivatedRoute) {
    super();
   }

  ngOnInit() {
    // Begin: loading currency data
    const from_id$ = this.route.queryParamMap.pipe(
      map((params) => Number(params.get(`from`))),
      filter((num) => num > 0),
      distinctUntilChanged()
    );
    const to_id$ = this.route.queryParamMap.pipe(
      map((params) => Number(params.get(`to`))),
      filter((num) => num > 0),
      distinctUntilChanged()
    );

    combineLatest(from_id$, to_id$).subscribe((value: number[]) => {
        const from_id = Number(value[0]);
        const to_id = Number(value[1]);
        this.chartDataService.getCurrencyPairData(from_id, to_id)
          .subscribe((data: CurrencyPairChartData) => {
            this.chartData = data.series;
            this.abbreviatedLabel = `${data.currencyPair.from.code} / ${data.currencyPair.to.code}`;
            this.fullLabel = `${data.currencyPair.from.name} / ${data.currencyPair.to.name}`;
            this.isLoading = false;
            this.displayChart(this.chartType);
          });
    },
    (err) => {
      this.showErrorPopup(err);
    });
    // End: currency loading

    // Begin: stock loading
    this.route.paramMap.pipe(
      map((params) => Number(params.get(`stock_id`))),
      filter((num) => num > 0),
      distinctUntilChanged()
    ).subscribe((stock_id: number) => {
        this.chartDataService.getStockData(stock_id)
          .subscribe((data: StockChartData) => {
            this.chartData = data.series;
            this.abbreviatedLabel = data.stock.symbol;
            this.fullLabel = data.stock.name;
            this.isLoading = false;
            this.isStock = true;
            this.displayChart(this.chartType);
          }, (err) => {
            this.showErrorPopup(err);
          });
    },
    (err) => {
      this.showErrorPopup(err);
    });
    // End: stock loading

    fromEvent(window, 'resize')
    .pipe(debounceTime(300))
    .subscribe(() => {
      if (this.chartData) {
        this.displayChart(this.chartType);
      }
    });
  }

  showErrorPopup (err: Error) {
    this.errorService.openErrorDialog({
      message: `Failed to load chart data!`,
      name: `Chart Data Error`,
      stack: String(err)
    });
  }

  displayChart (chartType: TechnicalsChartType): void {
    this.chartType = chartType;
    switch (chartType) {
      case TechnicalsChartType.MACD:
        this.macd(this.isStock);
        break;
      case TechnicalsChartType.OSCILLATORS:
        this.oscillators(this.isStock);
        break;
      default:
        this.macd(this.isStock);
        break;
    }
  }

  macd (isStock: boolean): void {
    const chartData = this.chartData;
    const firstElement = this.chartData[0];
    const xAxisHeight = 18;

    const previous = document.getElementById('display');
    previous.parentNode.removeChild(previous);
    const newDisplay = document.createElement('div');
    newDisplay.setAttribute('id', 'display');
    document.getElementById('technical-chart').appendChild(newDisplay);

    const containerWidth = window.innerWidth * 0.95;
    const containerHeight = window.innerHeight * 0.75;
    const stickWidth = containerWidth / (chartData.length * 3);
    const barWidth = stickWidth * 1.25;
    const alarmingVolume = d3.deviation(chartData, (d) => d.volume) * 1.5 +
      d3.mean(chartData, (d) => d.volume);
    const yMin = d3.min(chartData, (d) => Math.min(d.support, d.low) );
    const yMax = d3.max(chartData, (d) => Math.max(d.resistance, d.high) );
    const yExtent = [ yMin - yMin * 0.01, yMax + yMax * 0.01 ];
    const yExtentVolume = d3.extent(chartData, (d) => d.volume);
    const xExtent = d3.extent(chartData, (d) => d.time);
    const xScale = d3.scaleTime()
      .domain(xExtent)
      .range([stickWidth * 5, containerWidth * 0.98 - stickWidth]);
    d3.timeParse('%d-%b-%y');
    const xAxisScale = d3.scaleTime()
      .domain(xExtent)
      .range([46, containerWidth]);
    const xAxis = d3.axisBottom()
      .scale(xAxisScale)
      .ticks(containerWidth / 100);

    const yScale = d3.scaleLinear()
      .domain(yExtent)
      .range([containerHeight * 0.96, containerHeight * 0.025]);
    const yAxisScale = d3.scaleLinear()
      .domain(yExtent)
      .range([containerHeight * 0.96, containerHeight * 0.025]);
    const yAxis = d3.axisLeft()
      .scale(yAxisScale);
    const yScaleVolume = d3.scaleLinear()
      .domain(yExtentVolume)
      .range([containerHeight * 0.96, containerHeight * 0.75]);

    const tip = d3.select('#display').append('div')
      .attr('class', 'tooltip')
      .style('opacity', 0);

    const svgContainer = d3.select('#display').append('svg')
      .attr('width', containerWidth)
      .attr('height', containerHeight)
      .attr('class', 'viz mat-elevation-z4');

    const femaFunction = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.FEMA))
      .curve(d3.curveLinear);
    const semaFunction = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.SEMA))
      .curve(d3.curveLinear);
    const resistanceFunction = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.resistance))
      .curve(d3.curveLinear);
    const supportFunction = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.support))
      .curve(d3.curveLinear);

    // volume bars
    svgContainer.selectAll('rect')
      .data(chartData, (d) => d)
      .enter()
      .append('rect')
      .attr('x', (d) => xScale(d.time) - barWidth / 2)
      .attr('width', (d) => barWidth)
      .attr('y', (d) => yScaleVolume(1 * d.volume))
      .attr('height', (d) => (containerHeight - xAxisHeight) - yScaleVolume(1 * d.volume))
      .attr('fill', 'gold')
      .attr('opacity', 0.7);

    // FEMA
    svgContainer.append('path')
      .attr('d', femaFunction(chartData))
      .attr('stroke', 'blue')
      .attr('stroke-width', stickWidth * 0.4)
      .attr('fill', 'none');
    // SEMA
    svgContainer.append('path')
      .attr('d', semaFunction(chartData))
      .attr('stroke', 'orange')
      .attr('stroke-width', stickWidth * 0.4)
      .attr('fill', 'none');
    // resistance
    svgContainer.append('path')
      .attr('d', resistanceFunction(chartData))
      .attr('stroke', 'white')
      .attr('stroke-width', 1)
      .attr('fill', 'none');
    // support
    svgContainer.append('path')
      .attr('d', supportFunction(chartData))
      .attr('stroke', 'white')
      .attr('stroke-width', 1)
      .attr('fill', 'none');

    const lines = svgContainer.selectAll('line')
      .data(chartData, (d) => d)
      .enter()
      .append('line');

    // line attributes
    lines.attr('x1', (d) => xScale(d.time))
      .attr('x2', (d) => xScale(d.time))
      .attr('y1', (d) => yScale(d.high))
      .attr('y2', (d) => yScale(d.low))
      .attr('stroke-width', stickWidth)
      .attr('stroke', 'grey')
      .attr(`stroke-linecap`, `round`)
      .style(`opacity`, `0.8`)
      .on(`mouseover`, (d) => showTip(d))
      .on(`click`, (d) => showTip(d));

    // add a second line group, with the candles
    chartData.unshift(firstElement);
    const candles = svgContainer.selectAll('line')
      .data(chartData, (d) => d)
      .enter()
      .append('line');

    // candle attributes
    candles.attr('x1', (d) => xScale(d.time))
      .attr('x2', (d) => xScale(d.time))
      .attr('y1', (d) => d.open > d.close ? yScale(d.open) : yScale(d.close))
      .attr('y2', (d) => d.open <= d.close ? yScale(d.open) : yScale(d.close))
      .attr('stroke-width', stickWidth * 1.4)
      .attr('stroke', (d) => d.close >= d.open ? `green` : `red`)
      .attr('class', (datum) => {
        if (datum.volume >= alarmingVolume) {
          return 'alarm';
        }
        return '';
      })
      .attr('stroke-linecap', 'round')
      .on('mouseover', (datum) => showTip(datum))
      .on('click', (datum) => showTip(datum));

      // y axis group
    svgContainer.append('g')
      .attr('transform', 'translate(40, 0)')
      .attr('class', 'axis')
      .call(yAxis);
    // x axis group
    svgContainer.append('g')
      .attr('transform', 'translate(0, ' +
        (containerHeight - xAxisHeight) + ')')
      .attr('class', 'axis')
      .call(xAxis);

    function showTip(d): void {
      const printDate = new Date(d.time);
      const pricePrefix = isStock ? `$` : ``;
      const tooltipHTML = `<span id="date">${months[printDate.getMonth()]} ${printDate.getDate()}</span><br/>
        Open: ${pricePrefix}${d.open}<br/>
        Close: ${pricePrefix}${d.close}<br/>
        High: ${pricePrefix}${d.high}<br/>
        Low: ${pricePrefix}${d.low}<br/>
        Volume: ${addCommas('' + d.volume)}`;
      if (containerWidth - 140 < d3.event.pageX) {
        tip.html(tooltipHTML)
        .style('left', (d3.event.pageX - 140) + 'px')
        .style('top', (d3.event.pageY - 120) + 'px');
      } else {
        tip.html(tooltipHTML)
          .style(`left`, `${d3.event.pageX}px`)
          .style(`top`, `${(d3.event.pageY - 120)}px`);
      }
      tip.transition()
        .duration(200)
        .style(`opacity`, 0.9);

      function addCommas(str): string {
        let count = 0;
        for (let i = str.length - 1; i > 0; i--) {
          count = str[i] === `.` ? 0 : count + 1;
          if (count === 3) {
            str = str.slice(0, i) + ',' + str.slice(i);
            i--;
            count = 1;
          }
        }
        return str;
      }
    }
  }

  oscillators(isStock: boolean): void {
    const chartData = this.chartData;
    const previous = document.getElementById(`display`);
    const xAxisHeight = 18;
    previous.parentNode.removeChild(previous);
    const newDisplay = document.createElement(`div`);
    newDisplay.setAttribute(`id`, `display`);
    document.getElementById(`technical-chart`).appendChild(newDisplay);

    const containerWidth = window.innerWidth * 0.97;
    const containerHeight = window.innerHeight * 0.78;
    const yExtent = [0, 100];
    const xExtent = d3.extent(chartData, (d) => d.time);
    const yExtentPrice = d3.extent(chartData, (d) => d.close);
    const xScale = d3.scaleTime()
      .domain(xExtent)
      .range([36, containerWidth * 0.98 - 6]);
    d3.timeParse('%d-%b-%y');
    const xAxis = d3.axisBottom()
      .scale(xScale)
      .ticks(containerWidth / 100);
    const yScale = d3.scaleLinear()
      .domain(yExtent)
      .range([containerHeight * 0.96, containerHeight * 0.025]);
    const yScalePrice = d3.scaleLinear()
      .domain(yExtentPrice)
      .range([containerHeight * 0.96, containerHeight * 0.025]);
    const yAxis = d3.axisLeft()
      .scale(yScale);

    d3.select('#legend')
      .style('width', containerWidth)
      .style('height', containerHeight / 7.8);

    const svgContainer = d3.select('#display').append('svg')
      .attr('width', containerWidth)
      .attr('height', containerHeight)
      .attr('class', 'viz mat-elevation-z4')
      .style('border', '1px solid black')
      .style('border-top', '0');

    const percent_k_function = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.PER_K))
      .curve(d3.curveLinear);
    const percent_d_function = d3.line()
      .x((d) => xScale(d.time) )
      .y((d) => yScale(d.PER_D))
      .curve(d3.curveLinear);
    const rsi_function = d3.line()
      .x((d) => xScale(d.time))
      .y((d) => yScale(d.RSI))
      .curve(d3.curveLinear);

    // overbought line
    svgContainer.append(`line`)
      .attr(`x1`, 36)
      .attr(`x2`, containerWidth)
      .attr(`y1`, yScale(80))
      .attr(`y2`, yScale(80))
      .attr(`stroke-width`, 5)
      .attr(`stroke`, `green`)
      .style(`stroke-dasharray`, `5, 3`);
    // oversold line
    svgContainer.append(`line`)
      .attr(`x1`, 36)
      .attr(`x2`, containerWidth)
      .attr(`y1`, yScale(20))
      .attr(`y2`, yScale(20))
      .attr(`stroke-width`, 5)
      .attr(`stroke`, `red`)
      .style(`stroke-dasharray`, `5, 3`);

    // percent K
    svgContainer.append('path')
      .attr('d', percent_k_function(chartData))
      .attr('stroke', 'blue')
      .attr('stroke-width', 5)
      .attr('fill', 'none');
    // percent D
    svgContainer.append('path')
      .attr('d', percent_d_function(chartData))
      .attr('stroke', 'orange')
      .attr('stroke-width', 5)
      .attr('fill', 'none');
    // RSI
    svgContainer.append('path')
      .attr('d', rsi_function(chartData))
      .attr('stroke', 'cyan')
      .attr('stroke-width', 5)
      .attr('fill', 'none');
    // closes
    svgContainer.selectAll('circle')
      .data(chartData, (d) => d)
      .enter()
      .append('circle')
      .attr('cx', (d) => {
        return xScale(d.time);
      })
      .attr('cy', (d) => {
        return yScalePrice(d.close);
      })
      .attr('r', 5)
      .attr('fill', 'white');

    // Y axis group
    svgContainer.append('g')
      .attr('transform', 'translate(30, 0)')
      .attr('class', 'axis')
      .attr('color', 'white')
      .call(yAxis);
    // X axis group
    svgContainer.append('g')
      .attr('transform', 'translate(0, ' + (containerHeight - xAxisHeight) + ')')
      .attr('class', 'axis')
      .attr('color', 'white')
      .call(xAxis);
  }

}
