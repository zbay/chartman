CREATE OR REPLACE FUNCTION public.fn_remove_permission(perm_user_id int, old_permission text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
declare
	old_permission_id int;
begin
	        
	   select permission_id 
	   from public.permissions
	   where permission = old_permission
	   into old_permission_id;
	  
	  if old_permission_id is null then
	  	raise exception 'Permission "%" does not exist!', old_permission; 
	  end if;
	 
	 	delete from public.user_permissions
	 	where user_id = perm_user_id and permission_id = old_permission_id;

		update public.users u 
		set permissions = array_remove(u.permissions, old_permission)
		where u.user_id = perm_user_id;
END;
$function$;
