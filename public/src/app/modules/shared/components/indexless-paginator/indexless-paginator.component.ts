import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { MatSelectChange } from '@angular/material';

export interface PerPageOption {
  value: number;
  view_value: string;
}

// TODO: proper themeing for "Per page" color
@Component({
  selector: 'app-indexless-paginator',
  templateUrl: './indexless-paginator.component.html',
  styleUrls: ['./indexless-paginator.component.scss']
})
export class IndexlessPaginatorComponent implements OnInit {

  @Input() has_more_results = false;
  @Input() has_prior_results = false;
  @Input() num_loaded = 0;
  private _page_number = 1;
  private _per_page = 10;

  @Output() page_change: EventEmitter<boolean> = new EventEmitter();
  @Output() per_page: EventEmitter<number> = new EventEmitter();

  constructor() { }

  ngOnInit() {
  }

  changePerPage(event: MatSelectChange) {
    this.per_page.emit(event.value);
  }

  turnPage(is_forward: boolean) {
    is_forward ? this._page_number++ : this._page_number--;
    this.page_change.emit(is_forward);
  }
}
