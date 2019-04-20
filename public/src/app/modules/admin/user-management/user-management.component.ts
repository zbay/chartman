import { Component, OnInit } from '@angular/core';
import { ExitAnimatingComponent } from '@app/modules/shared/components/exit-animating/exit-animating.component';

@Component({
  selector: 'app-user-management',
  templateUrl: './user-management.component.html',
  styleUrls: ['./user-management.component.scss']
})
export class UserManagementComponent extends ExitAnimatingComponent implements OnInit {

  constructor() {
    super();
  }

  ngOnInit() {}

}
