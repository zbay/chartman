create or replace function public.fn_validate_password_change_request(test_route char(96), email text) returns boolean as $$
	declare
		is_valid_route boolean;
	begin
		is_valid_route := test_route in 
			(select route from public.password_change_requests 
				where (expires + interval '10 minutes') > current_timestamp
				and user_email = email);
		if not is_valid_route then
			delete from public.password_change_requests where route = test_route and user_email = email; -- auto-delete expired request
		end if;
		return is_valid_route;
	end;
$$ language plpgsql;