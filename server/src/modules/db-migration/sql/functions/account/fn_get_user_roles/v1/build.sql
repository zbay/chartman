create or replace function public.fn_get_user_roles(specific_user_id int)
returns json[]
LANGUAGE plpgsql
AS $function$
declare
	roles json[];
begin
	select array(select row_to_json(q)
	from 
	(select r."role", ur.expiration
	from public.roles r
	join public.user_roles ur
		on ur.role_id = r.id
	where ur.user_id = specific_user_id) q) into roles;
	return roles;
end;
$function$;