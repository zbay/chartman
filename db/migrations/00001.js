module.exports = {
    operations: [
        { 
            op: `build`,
            type: `extension`,
            name: `pg_trgm`
            // v: 1, as the default
        },
        { 
            op: `build`,
            type: `table`,
            name: `users`
        },
        { 
            op: `build`,
            type: `table`,
            name: `permissions`
        },
        { 
            op: `build`,
            type: `table`,
            name: `user_permissions`
        },
        { 
            op: `build`,
            type: `table`, 
            name: `exchanges`
        },
        { 
            op: `build`,
            type: `table`, 
            name: `stock_symbols`
        },
        { 
            op: `build`, 
            type: `table`, 
            name: `currencies`,
        },
        {
            op: `build`,
            type: `table`,
            name: `user_currency_trackers`
        },
        {
            op: `build`,
            type: `table`,
            name: `user_stock_trackers`
        },
        {
            op: `build`,
            type: `table`,
            name: `error_log`
        },
        {
            op: `build`,
            type: `table`,
            name: `password_change_requests`
        },
        {
            op: `build`,
            type: `table`,
            name: `bounces`
        },
        {
            op: `build`,
            type: `table`,
            name: `complaints`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_add_user`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_reset_user_strikes`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_retrieve_user_for_login`
        },
        {
            op: `build`,
            type: `function`,
            name: `stock/fn_add_stock_tracker`
        },
        {
            op: `build`,
            type: `function`,
            name: `stock/fn_auto_complete_stock`
        },
        {
            op: `build`,
            type: `function`,
            name: `currency/fn_auto_complete_currency`
        },
        {
            op: `build`,
            type: `function`,
            name: `stock/fn_delete_stock_tracker`
        },
        {
            op: `build`,
            type: `function`,
            name: `currency/fn_delete_currency_pair`
        },
        {
            op: `build`,
            type: `function`,
            name: `other/fn_log_error`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_update_user`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_request_password_change`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_validate_password_change_request_route`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_validate_password_change_request`
        },
        {
            op: `build`,
            type: `function`,
            name: `account/fn_change_password`
        },
        {
            op: `build`,
            type: `function`,
            name: `currency/fn_add_currency_pair`
        },
        {
            op: `build`,
            type: `function`,
            name: `currency/fn_get_my_currency_pairs`
        },
        {
            op: `build`,
            type: `function`,
            name: `stock/fn_get_stock`
        },
        {
            op: `build`,
            type: `function`,
            name: `stock/fn_get_my_stocks`
        },
        {
            op: `build`,
            type: `function`,
            name: `currency/fn_get_currency_pair`
        },
        {
            op: `build`,
            type: `function`,
            name: `admin/fn_save_bounce`
        },
        {
            op: `build`,
            type: `function`,
            name: `admin/fn_save_complaint`
        },
        {
            op: `populate`, // populate op is implied to be a table
            name: `exchanges`
        },
        {
            op: `populate`,
            name: `permissions`
        },
        {
            op: `populate`,
            name: `currencies`
        },
        {
            op: `populate`,
            name: `stock_symbols`
        }
    ]
};
