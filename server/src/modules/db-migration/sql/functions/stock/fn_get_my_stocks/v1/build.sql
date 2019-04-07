create or replace function public.fn_get_my_stocks (stock_user_id int, filter_query text = '')
returns setof json as $$
declare 
	filter_query_wc text;
begin
	filter_query_wc := '%' || filter_query || '%';
	return query
	SELECT row_to_json(q) from (select ss.id, ss.symbol, ss."name"
    FROM public.user_stock_trackers ust
    JOIN public.stock_symbols ss
    	ON ust.stock_id = ss.id
    WHERE ust.user_id = stock_user_id
    	and (ss.symbol ILIKE filter_query_wc or ss."name" ILIKE filter_query_wc)
    ) q;
end;
$$ language plpgsql;