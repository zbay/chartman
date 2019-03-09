create or replace function public.fn_change_password(change_route char(96), user_email text, new_password text) returns boolean as $$
	declare
		update_is_valid boolean;
	begin
		update_is_valid := public.fn_validate_password_change_request(change_route, user_email);
		if update_is_valid then
			update public.users set "password" = new_password where email = user_email;
			delete from public.password_change_requests where route = change_route;
		end if;
		return update_is_valid;
	end;
$$ language plpgsql;