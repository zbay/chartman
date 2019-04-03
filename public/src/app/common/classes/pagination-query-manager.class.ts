import { OrderDirection } from '@common/enums/order-direction.enum';
import { PaginatedFunctionOptions } from '../interfaces/paginated-function-options.enum';
import { PaginatedTableOptions } from '@common/interfaces/paginated-table-options.enum';

export class PaginationQueryManager {
    options: PaginatedFunctionOptions | PaginatedTableOptions;

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

    setNextCursor(data: any): void {
        this.options.cursor_point = OrderDirection.ASC
            ? Math.max(data.map((datum) => datum[this.options.order_by_col]))
            : Math.min(data.map((datum) => datum[this.options.order_by_col]));
    }

    toggleOrderDirection() {
        this.options.order_direction = this.options.order_direction === OrderDirection.ASC
            ? OrderDirection.DESC
            : OrderDirection.ASC;
    }

}
