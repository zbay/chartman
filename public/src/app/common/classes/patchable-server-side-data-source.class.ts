import { MatDialogRef } from '@angular/material';

import { Observable } from 'rxjs';

import { ComponentType } from '@angular/cdk/overlay/index';
import { EditorService } from '@app/services/editor/editor.service';
import { ErrorService } from '@app/services/error/error.service';
import { SearchablePaginationOptions } from '@common/interfaces/searchable-pagination-options.enum';
import { ServerSideDataSource } from '@common/classes/server-side-data-source.class';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

// tslint:disable-next-line:max-line-length
export abstract class PatchableServerSideDataSource<I, O extends SearchablePaginationOptions> extends ServerSideDataSource<I, O> {

    dialog: MatDialogRef<ComponentType<any>, { item: I }>;

    constructor(protected readonly error_service: ErrorService,
        protected readonly snackbar_service: SnackBarService,
        protected readonly editor_service: EditorService) {
            super(error_service, snackbar_service);
    }

    protected abstract patchItemOnServer(patched_item: I): Observable<any>;
    protected abstract patchItemInBrowser(patched_item: I): (value: I, index?: number, array?: I[]) => I;

    openEditorModal(item_to_edit: I, editor_component: ComponentType<any>): void {
        this.dialog = this.editor_service.openEditor(editor_component, { item: item_to_edit });
        this.dialog.afterClosed().subscribe((data: any) => {
            if (data) {
              if (data.deleted) {
                this.deleteItem(data.deleted);
              } else if (data.edited) {
                this.patchItem(data.edited);
              }
            }
          }, this.error_service.standardSubscriptionErrorHandler);
    }

    patchItem(patched_item: I): void {
        this.patchItemOnServer(patched_item).subscribe(() => {
            this.items$.next(
                this.items$.value.map(this.patchItemInBrowser(patched_item))
            );
        }, this.error_service.standardSubscriptionErrorHandler);
    }
}
