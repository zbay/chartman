import { Component, OnInit, Input, ViewEncapsulation } from '@angular/core';
import { Orientation } from '@shared/enums/orientation';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class NavbarComponent implements OnInit {
  loggedIn = false;
  currentUrl: string;
  Orientation = Orientation;

  @Input() orientation: Orientation;

  constructor() {}

  ngOnInit() {}

}
