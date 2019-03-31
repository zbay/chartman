import { HttpStatus } from '@nestjs/common';

export interface PostgresFunctionQueryOptions {
    function: string;
    err_msg?: string;
    err_code?: HttpStatus;
    returns_array?: boolean;
    params?: any[];
    row_name?: string;
    schema?: string;
    swallow_error?: boolean;
}
