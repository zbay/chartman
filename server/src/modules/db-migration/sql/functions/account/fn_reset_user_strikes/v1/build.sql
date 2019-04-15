CREATE OR REPLACE FUNCTION public.fn_reset_user_strikes(user_email text)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
	begin
		update public.users 
		set strikes = 0, last_login = current_timestamp 
		where email = user_email;
	end;
$function$;