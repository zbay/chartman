create or replace function public.fn_delete_stock_tracker(delete_user_id int4, delete_stock_id int4) RETURNS void AS $$
    begin
	    DELETE FROM public.user_stock_trackers 
		WHERE user_id = delete_user_id AND stock_id = delete_stock_id;
    END;
$$ LANGUAGE plpgsql; 