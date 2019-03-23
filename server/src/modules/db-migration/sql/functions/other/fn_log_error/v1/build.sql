create or replace function public.fn_log_error(logged_in_user_id int4, err_url text, err_msg text, err_stack text) returns void as $$
	begin
		insert into public.error_log (user_id, "url", "message", stack)
		values (logged_in_user_id, err_url, err_msg, err_stack);
	end;
$$ language plpgsql;