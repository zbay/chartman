import { CommonModule } from '@angular/common';
import { FlexLayoutModule } from '@angular/flex-layout';
import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';

import { SubscribingComponent } from '@app/modules/shared/components/subscribing/subscribing.component';

import { MaterialModule } from '@app/modules/material/material.module';
import { ErrorDialogComponent } from '@app/modules/shared/components/error-dialog/error-dialog.component';
import { NotFoundComponent } from '@app/modules/shared/components/not-found/not-found.component';
import { ProgressSpinnerComponent } from './components/progress-spinner/progress-spinner.component';
import { ExitAnimatingComponent } from './components/exit-animating/exit-animating.component';
import { IndexlessPaginatorComponent } from './components/indexless-paginator/indexless-paginator.component';
import { UserEditorComponent } from './components/user-editor/user-editor.component';

@NgModule({
  declarations: [
    ErrorDialogComponent,
    ExitAnimatingComponent,
    IndexlessPaginatorComponent,
    NotFoundComponent,
    ProgressSpinnerComponent,
    SubscribingComponent,
    UserEditorComponent
  ],
  imports: [
    CommonModule,
    FlexLayoutModule,
    MaterialModule,
    ReactiveFormsModule,
    RouterModule
  ],
  exports: [
    CommonModule,
    FlexLayoutModule,
    IndexlessPaginatorComponent,
    MaterialModule,
    ProgressSpinnerComponent,
    ReactiveFormsModule,
    UserEditorComponent
  ]
})
export class SharedModule { }
