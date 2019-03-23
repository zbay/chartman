create or replace function public.fn_delete_currency_pair(delete_user_id int, delete_from_id int, delete_to_id int) RETURNS void AS $$
    begin
	    DELETE FROM public.user_currency_trackers
		WHERE user_id = delete_user_id 
			AND "from" = delete_from_id
			AND "to" = delete_to_id;
    END;
$$ LANGUAGE plpgsql;