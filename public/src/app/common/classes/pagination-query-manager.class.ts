import { OrderDirection } from '@common/enums/order-direction.enum';
import { PageOperation } from '@app/modules/charts/enums/page-operation.enum';
import { PaginatedQueryOptions } from '@app/common/interfaces/paginated-query-options.enum';

export class PaginationQueryManager {
    options: PaginatedQueryOptions;
    private previous_cursor_points: any[] = [];

    constructor(options: PaginatedQueryOptions) {
        if (!options.order_direction) {
            options.order_direction = OrderDirection.ASC;
        }
        if (!options.order_by_col) {
            options.order_by_col = `id`;
        }
        if (!options.per_page) {
            options.per_page = 100;
        }
        this.options = options;
    }

    private resetCursor() {
        this.previous_cursor_points = [];
    }

    setNextCursor(data: any, page_op: PageOperation): void {
        if (page_op === PageOperation.NONE) {
            this.resetCursor();
            return;
        } else if (page_op === PageOperation.BACKWARD) {
            this.options.cursor_point = this.previous_cursor_points.pop();
            return;
        } else if (page_op === PageOperation.SIZE_CHANGE) {
            return;
        }
        const order_by_col = this.options.order_by_col;
        if (data.length) {
            if (!this.previous_cursor_points.length
                || this.options.cursor_point !== this.previous_cursor_points[this.previous_cursor_points.length - 1]) {
                    this.previous_cursor_points.push(this.options.cursor_point);
            }
            // Assumes that the data is already sorted for that particular column, on the front-end
            this.options.cursor_point = data[data.length - 1][order_by_col];
        }
    }

    toggleOrderDirection() {
        this.options.order_direction = this.options.order_direction === OrderDirection.ASC
            ? OrderDirection.DESC
            : OrderDirection.ASC;
    }

}
