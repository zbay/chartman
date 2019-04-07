import { OrderDirection } from '@common/enums/order-direction.enum';
import { PageOperation } from '@app/modules/charts/enums/page-operation.enum';
import { PaginatedFunctionOptions } from '@common/interfaces/paginated-function-options.enum';
import { PaginatedTableOptions } from '@common/interfaces/paginated-table-options.enum';

export class PaginationQueryManager {
    options: PaginatedFunctionOptions | PaginatedTableOptions;
    private previous_cursor_points: any[] = [];

    constructor(options: PaginatedFunctionOptions | PaginatedTableOptions) {
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
        }
        const order_by_col = this.options.order_by_col;
        if (data.length) {
            if (page_op === PageOperation.BACKWARD) {
                this.options.cursor_point = this.previous_cursor_points.pop();
            } else {
                const maxReducer = (max, current) => {
                    const currentVal = this.normalizeIfString(current[order_by_col]);
                    return (currentVal > max || !max) ? currentVal : max;
                };
                const minReducer = (min, current) => {
                    const currentVal = this.normalizeIfString(current[order_by_col]);
                    return (currentVal < min || !min) ? currentVal : min;
                };
                this.previous_cursor_points.push(this.options.cursor_point);
                this.options.cursor_point = this.options.order_direction === OrderDirection.ASC
                    ? data.reduce(maxReducer, data[0][order_by_col])
                    : data.reduce(minReducer, data[0][order_by_col]);
            }
        }
    }

    private normalizeIfString(val: any) {
        return typeof val === `string` ? val.toLocaleLowerCase() : val;
    }

    toggleOrderDirection() {
        this.options.order_direction = this.options.order_direction === OrderDirection.ASC
            ? OrderDirection.DESC
            : OrderDirection.ASC;
    }

}
