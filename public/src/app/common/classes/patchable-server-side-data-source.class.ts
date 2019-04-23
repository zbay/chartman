import { ServerSideDataSource } from './server-side-data-source.class';
import { SearchablePaginationOptions } from '../interfaces/searchable-pagination-options.enum';
import { Observable } from 'rxjs';
import { ErrorService } from '@app/services/error/error.service';
import { SnackBarService } from '@app/services/snack-bar/snack-bar.service';

// tslint:disable-next-line:max-line-length
export abstract class PatchableServerSideDataSource<I, O extends SearchablePaginationOptions> extends ServerSideDataSource<I, O> {

    constructor(protected readonly error_service: ErrorService,
        protected readonly snackbar_service: SnackBarService) {
            super(error_service, snackbar_service);
    }

    protected abstract patchItemOnServer(patched_item: I): Observable<any>;
    protected abstract patchItemInBrowser(patched_item: I): (value: I, index?: number, array?: I[]) => I;

    patchItem(patched_item: I): void {
        this.patchItemOnServer(patched_item).subscribe(() => {
            this.items$.next(
                this.items$.value.map(this.patchItemInBrowser(patched_item))
            );
        }, this.error_service.standardSubscriptionErrorHandler);
    }
}
