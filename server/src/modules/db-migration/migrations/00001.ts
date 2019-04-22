import { MigrationVerb } from '@migration/enums/migration-verb.enum';
import { MigrationType } from '@migration/enums/migration-type.enum';
import { MigrationOperation } from '@migration/interfaces/migration-operation.interface';

export const operations: MigrationOperation[] = [
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.EXTENSION,
            name: `pg_trgm`
            // v: 1, as the default
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `users`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `roles`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `user_roles`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `exchanges`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `stock_symbols`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `currencies`,
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `user_currency_trackers`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `user_stock_trackers`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `error_log`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `password_change_requests`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `bounces`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.TABLE,
            name: `complaints`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_get_user_roles`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_get_user_role_names`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_add_user`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_reset_user_strikes`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_retrieve_user_for_login`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_get_user_by_id`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_get_users`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `stock/fn_add_stock_tracker`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `stock/fn_auto_complete_stock`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `currency/fn_auto_complete_currency`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `stock/fn_delete_stock_tracker`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `currency/fn_delete_currency_pair`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `other/fn_log_error`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_update_user`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_request_password_change`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_validate_password_change_request_route`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_add_role`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_remove_role`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_change_password`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `currency/fn_add_currency_pair`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `currency/fn_get_my_currency_pairs`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `stock/fn_get_stock`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `stock/fn_get_my_stocks`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `currency/fn_get_currency_pair`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `admin/fn_save_bounce`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `admin/fn_save_complaint`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `admin/fn_delete`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `other/fn_retrieve_page_from_table`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `other/fn_retrieve_page_from_function`
        },
        {
            verb: MigrationVerb.BUILD,
            type: MigrationType.FUNCTION,
            name: `account/fn_update_user_as_admin`
        },
        {
            verb: MigrationVerb.POPULATE, // populate op is implied to be a table
            name: `exchanges`
        },
        {
            verb: MigrationVerb.POPULATE,
            name: `currencies`
        },
        {
            verb: MigrationVerb.POPULATE,
            name: `roles`
        },
        {
            verb: MigrationVerb.POPULATE,
            name: `stock_symbols`
        }
];
