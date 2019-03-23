create or replace function public.fn_get_user_by_id(id int) returns json as $$
	declare
		user_record record;
	begin
		SELECT first_name, last_name, email
                FROM public.users
                WHERE user_id = id
        into user_record;
       return row_to_json(user_record);
	end;
$$ language plpgsql;
