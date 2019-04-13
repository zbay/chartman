import { PaginatedQueryOptions } from '@common/interfaces/paginated-query-options.enum';

export interface SearchablePaginationOptions extends PaginatedQueryOptions {
    search_filter?: string;
}
