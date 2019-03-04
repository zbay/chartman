create or replace function fn_add_stock_tracker(new_user_id int4, new_symbol_id int4) RETURNS void AS $$
    BEGIN
		INSERT INTO public.user_stock_trackers (user_id, stock_id)
        VALUES (new_user_id, new_symbol_id) ON CONFLICT (user_id, stock_id) DO nothing;
    END;
$$ LANGUAGE plpgsql;