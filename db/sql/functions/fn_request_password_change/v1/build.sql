create or replace function public.fn_request_password_change(email text, new_route text) returns void as $$
	declare
		expiration timestamp;
	begin
		if email in (select u.email from public.users u) then
			expiration := current_timestamp + interval '6 hrs';
			INSERT INTO public.password_change_requests (user_email, route, expires)
	        VALUES (email, new_route, expiration)
	        on conflict (user_email) do update set route = new_route, expires = expiration;
		end if;
	end;
$$ language plpgsql;