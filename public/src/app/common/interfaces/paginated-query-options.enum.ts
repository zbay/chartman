import { ColumnSortType } from '@common/enums/column-sort-type.enum';
import { OrderDirection } from '@common/enums/order-direction.enum';

export interface PaginatedQueryOptions {
    query_subject?: string;
    cursor_point?: string | number | boolean | Date;
    order_by_col?: string;
    order_by_col_type?: ColumnSortType;
    order_direction?: OrderDirection;
    per_page?: number;
    where_condition?: string;
    is_function?: boolean;
    function_params?: any[] | string;
    retrieved_columns?: string;
    retrieval_error_message?: string;
    retrieval_success_message?: string;
    deletion_error_message?: string;
    deletion_success_message?: string;
}
