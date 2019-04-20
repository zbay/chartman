import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { MatSelectChange } from '@angular/material';

import { SelectOption } from '@app/modules/shared/interfaces/select-option.interface';

// TODO: proper themeing for "Per page" color
@Component({
  selector: 'app-indexless-paginator',
  templateUrl: './indexless-paginator.component.html',
  styleUrls: ['./indexless-paginator.component.scss']
})
export class IndexlessPaginatorComponent implements OnInit {

  @Input() has_more_results = false;
  @Input() has_prior_results = false;
  @Input() set num_loaded(nl: number) {
    if (this._page_number > 1 && nl === 0) {
      this._page_number--;
    }
    this._num_loaded = nl;
    this._in_transition = false;
  }
  @Input() per_page_options: SelectOption[] = [];

  private _in_transition = false;
  private _num_loaded = 0;
  private _page_number = 1;
  private _per_page: number = this.per_page_options[0] ? this.per_page_options[0].value : 10;

  @Output() page_change: EventEmitter<boolean> = new EventEmitter();
  @Output() per_page: EventEmitter<number> = new EventEmitter();

  constructor() { }

  ngOnInit() {
  }

  changePerPage(event: MatSelectChange) {
    this.per_page.emit(event.value);
  }

  turnPage(is_forward: boolean) {
    this._in_transition = true;
    is_forward ? this._page_number++ : this._page_number--;
    this.page_change.emit(is_forward);
  }
}
