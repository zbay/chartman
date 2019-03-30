CREATE OR REPLACE FUNCTION public.fn_remove_role(perm_user_id int, old_role text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
declare
	old_role_id int;
begin
	        
	   select role_id 
	   from public.roles
	   where role = old_role
	   into old_role_id;
	  
	  if old_role_id is null then
	  	raise exception 'Role "%" does not exist!', old_role; 
	  end if;
	 
	 	delete from public.user_roles
	 	where user_id = perm_user_id and role_id = old_role_id;

		update public.users u 
		set roles = array_remove(u.roles, old_role)
		where u.user_id = perm_user_id;
END;
$function$;
