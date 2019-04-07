import { Component, OnInit, Input } from '@angular/core';

export interface PerPageOption {
  value: number;
  view_value: string;
}

// TODO: Inputs, outputs, and proper themeing for "Per page" color
@Component({
  selector: 'app-indexless-paginator',
  templateUrl: './indexless-paginator.component.html',
  styleUrls: ['./indexless-paginator.component.scss']
})
export class IndexlessPaginatorComponent implements OnInit {

  @Input() has_more_results = false;
  @Input() has_prior_results = false;
  @Input() page_number = 1;
  selected = 10;

  constructor() { }

  ngOnInit() {
  }
}
