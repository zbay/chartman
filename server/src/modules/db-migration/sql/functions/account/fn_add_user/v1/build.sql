-- select public.fn_add_user('{"first_name": "Zach", "last_Name": "Williams", "email": "z@abc.com", "password": "12345"}'::json);
CREATE OR REPLACE FUNCTION public.fn_add_user(user_obj json)
 RETURNS json
 LANGUAGE plpgsql
AS $function$
		declare just_created_user record;
        BEGIN
               insert into users (first_name, last_name, email, "password",
                    last_login, last_login_attempt)
               	values (user_obj->>'first_name', user_obj->>'last_name', user_obj->>'email', user_obj->>'password',
               		current_timestamp, current_timestamp);

              select u.id, u.email
              , public.fn_get_user_role_names(u.id) as roles
              from public.users u
              where email = user_obj->>'email' 
              into just_created_user;

              insert into user_roles (user_id, role_id)
              	values ((select id from users where id = just_created_user.id),
             	(select id from roles where "role" = 'Free'));
             return row_to_json(just_created_user);
        END;
$function$;
