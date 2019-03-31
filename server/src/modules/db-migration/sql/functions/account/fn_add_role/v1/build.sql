CREATE OR REPLACE FUNCTION public.fn_add_role(new_user_id int, new_role text, new_expiration timestamptz)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
declare
	new_role_id int;
begin
	        
	   select role_id 
	   from public.roles
	   where "role" = new_role
	   into new_role_id;
	  
	  if new_role_id is null then
	  	raise exception 'Role "%" does not exist!', new_role; 
	  end if;
	 
		insert into public.user_roles (expiration, user_id, role_id)
		values (new_expiration, new_user_id, new_role_id);

		update public.users u 
		set roles = array_append(u.roles, new_role)
		where u.id = new_user_id
		and not new_role = ANY(u.roles);
END;
$function$;