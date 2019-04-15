CREATE OR REPLACE FUNCTION public.fn_delete_user(old_user_id int)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
begin
	delete from public.users where id = old_user_id;
end;
$function$;