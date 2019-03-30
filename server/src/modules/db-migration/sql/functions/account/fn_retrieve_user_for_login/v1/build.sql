create or replace function fn_retrieve_user_for_login(user_email text) RETURNS json AS $$
	declare retrieved_user record;
	begin
		SELECT user_id, password, roles, strikes, last_login_attempt
		from public.users u
        WHERE u.email = user_email
        into retrieved_user;
       
       if retrieved_user.strikes >= 5 then 
       	if retrieved_user.last_login_attempt > (current_timestamp - interval '2 hrs') THEN
       		raise exception 'Too many login attempts! Try again later.';
       	else
       		perform public.fn_reset_user_strikes(user_email);
       	end if;
       end if;
      
      update public.users set strikes = strikes + 1, last_login_attempt = current_timestamp where email = user_email;
       
      return row_to_json(retrieved_user);
	end;
$$ language plpgsql;