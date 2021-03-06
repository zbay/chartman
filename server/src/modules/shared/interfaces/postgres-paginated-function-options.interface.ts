import { OrderDirection } from '@shared/enums/order-direction.enum';

export interface PostgresPaginatedFunctionOptions {
    function: string;
    cursor_point?: string | number | boolean | Date;
    err_msg?: string;
    function_params?: any[] | string;
    order_by_col?: string;
    order_by_col_type?: string;
    order_direction?: OrderDirection;
    per_page?: number;
    where_condition?: string;
}
