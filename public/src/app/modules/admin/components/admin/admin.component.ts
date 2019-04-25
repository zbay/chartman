import { Component, OnInit } from '@angular/core';
import { Animations } from '@app/common/animations/animations';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss'],
  animations: [Animations.fadeInOut]
})
export class AdminComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
