-- select public.fn_add_user('{"first_name": "Zach", "last_Name": "Williams", "email": "z@abc.com", "password": "12345"}'::json);
CREATE OR REPLACE FUNCTION public.fn_add_user(user_obj json)
 RETURNS json
 LANGUAGE plpgsql
AS $function$
		declare just_created_user record;
        BEGIN
               insert into users (first_name, last_name, email, "password", permissions)
               	values (user_obj->>'first_name', user_obj->>'last_name', user_obj->>'email', user_obj->>'password',
               		'{free}');
              select user_id, email, permissions from users where email = user_obj->>'email' into just_created_user;
              insert into user_permissions (user_id, permission_id)
              	values ((select user_id from users where user_id=just_created_user.user_id),
             	(select permission_id from permissions where permission = 'free'));
             return row_to_json(just_created_user);
        END;
$function$;
