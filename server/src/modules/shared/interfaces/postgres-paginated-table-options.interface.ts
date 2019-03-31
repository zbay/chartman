import { OrderDirection } from '@shared/enums/order-direction.enum';

export interface PostgresPaginatedTableOptions {
    table: string;
    cursor_point?: string | number | boolean | Date;
    err_msg?: string;
    order_by_col?: string;
    order_direction?: OrderDirection;
    per_page?: number;
    where_condition?: string;
}
