import { ComponentType } from '@angular/cdk/overlay/index';
import { Injectable } from '@angular/core';
import { MatDialog, MatDialogConfig, MatDialogRef } from '@angular/material';

@Injectable({
  providedIn: 'root'
})
export class EditorService {

  constructor(private dialog: MatDialog) { }

  openEditor(component: ComponentType<any>, data: {[key: string]: any}): MatDialogRef<any, any> {
    this.dialog.closeAll();
    const dialogConfig: MatDialogConfig =  {
      disableClose: false,
      autoFocus: true,
      minHeight: '80%',
      maxHeight: '90%',
      minWidth: '70%',
      maxWidth: '90%',
      panelClass: 'chartman-theme',
      data
    };
    return this.dialog.open(component, dialogConfig);
  }

  closeEditor() {
    this.dialog.closeAll();
  }
}
