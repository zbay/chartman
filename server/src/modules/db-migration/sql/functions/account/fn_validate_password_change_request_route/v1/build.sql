create or replace function public.fn_validate_password_change_request_route(test_route char(96), changer_email text) returns boolean as $$
	declare
		is_valid_route boolean;
	begin
		is_valid_route := test_route in 
			(select route from public.password_change_requests pcr where expires > current_timestamp 
				and changer_email = pcr.user_email);
		if not is_valid_route then
			delete from public.password_change_requests where route = test_route; -- auto-delete expired request
		end if;
		return is_valid_route;
	end;
$$ language plpgsql;