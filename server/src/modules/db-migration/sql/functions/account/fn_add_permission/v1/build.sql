CREATE OR REPLACE FUNCTION public.fn_add_permission(new_user_id int, new_permission text, new_expiration timestamptz)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
declare
	new_permission_id int;
begin
	        
	   select permission_id 
	   from public.permissions
	   where permission = new_permission
	   into new_permission_id;
	  
	  if new_permission_id is null then
	  	raise exception 'Permission "%" does not exist!', new_permission; 
	  end if;
	 
		insert into public.user_permissions (expiration, user_id, permission_id)
		values (new_expiration, new_user_id, new_permission_id);

		update public.users u 
		set permissions = array_append(u.permissions, new_permission)
		where u.user_id = new_user_id
		and not new_permission = ANY(u.permissions);
END;
$function$;