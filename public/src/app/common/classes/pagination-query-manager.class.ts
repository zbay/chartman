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
        const order_by_col = this.options.order_by_col;
        if (data.length) {
            const maxReducer = (max, current) => {
                const currentVal = current[order_by_col];
                return (currentVal > max || !max) ? currentVal : max;
            };
            const minReducer = (min, current) => {
                const currentVal = current[order_by_col];
                return (currentVal < min || !min) ? currentVal : min;
            };
            this.options.cursor_point = (this.options.order_direction === OrderDirection.ASC)
                ? data.reduce(maxReducer, data[0][order_by_col])
                : data.reduce(minReducer, data[0][order_by_col]);
        }
    }

    toggleOrderDirection() {
        this.options.order_direction = this.options.order_direction === OrderDirection.ASC
            ? OrderDirection.DESC
            : OrderDirection.ASC;
    }

}
