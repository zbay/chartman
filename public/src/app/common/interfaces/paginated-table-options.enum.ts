import { OrderDirection } from '@common/enums/order-direction.enum';

export interface PaginatedTableOptions {
    table?: string;
    cursor_point?: string | number | boolean | Date;
    order_by_col?: string;
    order_direction?: OrderDirection;
    per_page?: number;
}
