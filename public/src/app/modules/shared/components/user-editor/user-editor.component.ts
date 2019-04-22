import { Component, OnInit, Inject } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormArray, FormControl } from '@angular/forms';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';

import { takeUntil } from 'rxjs/operators';

import { Role } from '@common/enums/role.enum';
import { SelectOption } from '@shared/interfaces/select-option.interface';
import { UserForAdmin } from '@common/interfaces/user-for-admin.interface';
import { SubscribingComponent } from '../subscribing/subscribing.component';

const ROLE_EXPIRATIONS = `role_expirations`;
const ROLE_NAMES = `role_names`;

@Component({
  selector: 'app-user-editor',
  templateUrl: './user-editor.component.html',
  styleUrls: ['./user-editor.component.scss']
})
export class UserEditorComponent extends SubscribingComponent implements OnInit {
  fb = new FormBuilder();
  user: UserForAdmin;
  user_group: FormGroup = this.fb.group({
    id: [0, [Validators.required]],
    first_name: [ '', [Validators.required, Validators.maxLength(100)]],
    last_name: [ '', [Validators.required, Validators.maxLength(100)]],
    email: ['', [Validators.required, Validators.email] ],
    strikes: [0, [Validators.required, Validators.min(0)]],
    role_names: [[], [Validators.required, Validators.minLength(1)]],
    role_expirations: this.fb.array([])
  });
  previous_role_names: string[];
  roles: SelectOption[] = [
    { value: Role.FREE, view_value: `Free` },
    { value: Role.PREMIUM_CURRENCIES, view_value: `Premium Currencies` },
    { value: Role.PREMIUM_STOCKS, view_value: `Premium Stocks` },
    { value: Role.PREMIUM_GAMBLING, view_value: `Premium Gambling` },
    { value: Role.ADMIN, view_value: `Admin` }
  ];

  constructor(private dialogRef: MatDialogRef<UserEditorComponent>,
    @Inject(MAT_DIALOG_DATA) data) {
      super();
      this.user = data.user;
      this.previous_role_names = this.user.roles.map((role) => role.role);
      this.user_group.patchValue({
        id: this.user.id,
        first_name: this.user.first_name,
        last_name: this.user.last_name,
        email: this.user.email,
        strikes: this.user.strikes,
        role_names: this.previous_role_names
      });
      const expirations = this.user.roles.map((role) => role.expiration);
      expirations.forEach((expiration) => {
        this.role_expirations.push(new FormControl(expiration));
      });
      // console.log(this.user.roles);
      // console.log(this.user_group.value);
    }

  ngOnInit() {
    // Reset the role_expirations FormArray whenever the role_names selection changes, preserving what data is already there
    this.user_group.get(ROLE_NAMES).valueChanges.pipe(takeUntil(this.destroy$))
      .subscribe((names: string[]) => {
        const new_role_expirations = [];
        const previous_roles = {};
        const previous_role_expirations = this.role_expirations.value;
        for (let i = 0; i < this.previous_role_names.length; i++) {
          previous_roles[this.previous_role_names[i]] = previous_role_expirations[i];
        }
        names.forEach((name: string) => {
          new_role_expirations.push(previous_roles[name]);
        });
        this.user_group.removeControl(ROLE_EXPIRATIONS);
        this.user_group.addControl(ROLE_EXPIRATIONS, this.fb.array([], [Validators.required, Validators.minLength(1)]));
        new_role_expirations.forEach((expiration) => {
          this.role_expirations.push(new FormControl(expiration));
        });
        this.previous_role_names = names;
      });
  }

  get role_names(): string[] {
    return this.user_group.get(ROLE_NAMES).value;
  }

  get role_expirations(): FormArray {
    return this.user_group.get(ROLE_EXPIRATIONS) as FormArray;
  }

  deleteUser() {
    this.dialogRef.close({ deleted: this.user});
  }

  saveChanges() {
    const form_data = this.user_group.value;
    this.dialogRef.close({ edited: {
      id: this.user.id,
      first_name: form_data.first_name,
      last_name: form_data.last_name,
      email: form_data.email,
      strikes: form_data.strikes,
      roles: form_data.role_names.map((name, i) => {
        return { role: name, expiration: form_data.role_expirations[i] };
      })
    }});
  }

}
