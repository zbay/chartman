-- select public.fn_add_user('{"first_name": "Zach", "last_Name": "Williams", "email": "z@abc.com", "password": "12345"}'::json);
CREATE OR REPLACE FUNCTION public.fn_add_user(user_obj json)
 RETURNS json
 LANGUAGE plpgsql
AS $function$
		declare just_created_user record;
        BEGIN
               insert into users (first_name, last_name, email, "password", roles)
               	values (user_obj->>'first_name', user_obj->>'last_name', user_obj->>'email', user_obj->>'password',
               		'{free}');
              select id, email, roles from users where email = user_obj->>'email' into just_created_user;
              insert into user_roles (user_id, role_id)
              	values ((select id from users where id = just_created_user.id),
             	(select role_id from roles where "role" = 'free'));
             return row_to_json(just_created_user);
        END;
$function$;
