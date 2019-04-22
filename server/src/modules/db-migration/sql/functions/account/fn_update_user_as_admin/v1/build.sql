CREATE OR REPLACE FUNCTION public.fn_update_user_as_admin(user_obj jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
		declare 
			email_taken boolean;
			r json;
			updated_user_id int;
        begin
	          updated_user_id := (user_obj->>'id')::int;
	          email_taken = (
	         	select count(1) 
	         	from public.users u
	         	where u.email = user_obj->>'email'
	         	and updated_user_id <> u.id) > 0;
	         	
	         if email_taken then
	         	raise exception 'This email address has already been taken. Try another one.';
	         end if;
	          
	          update public.users
	          set first_name = user_obj->>'first_name',
	          	last_name = user_obj->>'last_name',
	          	email = user_obj->>'email',
	          	strikes = (user_obj->>'strikes')::int
	          where id = updated_user_id;
	        	        
	         delete from public.user_roles 
	         where user_id = updated_user_id;
	        
	         for r in select * from json_array_elements((user_obj->>'roles')::json) loop
	         	perform public.fn_add_role(updated_user_id, r->>'role', (r->>'expiration')::date);
	         end loop;   
        END;
$function$;