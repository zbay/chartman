create or replace function public.fn_get_my_stocks (stock_user_id int)
returns setof json as $$
begin
	return query
	SELECT row_to_json(q) from (select ss.symbol_id AS id, ss.symbol, ss."name"
    FROM public.user_stock_trackers ust
    JOIN public.stock_symbols ss
    	ON ust.stock_id = ss.symbol_id
    WHERE ust.user_id = stock_user_id) q;
end;
$$ language plpgsql;
