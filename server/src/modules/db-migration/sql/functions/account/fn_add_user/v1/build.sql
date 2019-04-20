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
              , (select array(select "role" from public.roles r
                join public.user_roles ur
                    on ur.role_id = r.id
                where user_id = u.id)) as roles
              from public.users u
              where email = user_obj->>'email' 
              into just_created_user;

              insert into user_roles (user_id, role_id)
              	values ((select id from users where id = just_created_user.id),
             	(select id from roles where "role" = 'free'));
             return row_to_json(just_created_user);
        END;
$function$;
