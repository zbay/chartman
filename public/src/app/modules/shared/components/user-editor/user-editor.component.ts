import { Component, OnInit, Inject } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';

import { Role } from '@common/enums/role.enum';
import { SelectOption } from '@shared/interfaces/select-option.interface';
import { UserForAdmin } from '@common/interfaces/user-for-admin.interface';

@Component({
  selector: 'app-user-editor',
  templateUrl: './user-editor.component.html',
  styleUrls: ['./user-editor.component.scss']
})
export class UserEditorComponent implements OnInit {
  fb = new FormBuilder();
  user: UserForAdmin;
  user_group: FormGroup = this.fb.group({
    id: [0, [Validators.required]],
    first_name: [ '', [Validators.required, Validators.maxLength(100)]],
    last_name: [ '', [Validators.required, Validators.maxLength(100)]],
    email: [ '', [Validators.required, Validators.email] ],
    strikes: [0, [Validators.required, Validators.min(0)]],
    // roles: [[], [Validators.required, Validators.minLength(1)]]
  });
  roles: SelectOption[] = [
    { value: Role.FREE, view_value: `Free` },
    { value: Role.PREMIUM_CURRENCIES, view_value: `Premium Currencies` },
    { value: Role.PREMIUM_STOCKS, view_value: `Premium Stocks` },
    { value: Role.PREMIUM_GAMBLING, view_value: `Premium Gambling` },
    { value: Role.ADMIN, view_value: `Admin` }
  ];

  constructor(private dialogRef: MatDialogRef<UserEditorComponent>,
    @Inject(MAT_DIALOG_DATA) data) {
      this.user = data.user;
      this.user_group.patchValue({
        id: this.user.id,
        first_name: this.user.first_name,
        last_name: this.user.last_name,
        email: this.user.email,
        strikes: this.user.strikes,
        // roles: this.user.roles
      });
    }

  ngOnInit() {
  }

  deleteUser() {
    this.dialogRef.close({ deleted: this.user});
  }

  editUser() {
    console.log(this.user_group.value);
    this.dialogRef.close({ edited: this.user_group.value });
  }

}
