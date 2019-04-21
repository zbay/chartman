create or replace function public.fn_get_user_role_names(specific_user_id int)
returns text[]
LANGUAGE plpgsql
AS $function$
declare
	roles text[];
begin
	select array(select "role" from public.roles r
	   join public.user_roles ur
	     on ur.role_id = r.id
	   where ur.user_id = specific_user_id) into roles;
	return roles;
end;
$function$;