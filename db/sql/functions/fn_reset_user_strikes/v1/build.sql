create or replace function fn_reset_user_strikes(user_email text) returns void as $$
	begin
		update public.users set strikes = 0 where email = user_email;
	end;
$$ language plpgsql;