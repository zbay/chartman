create or replace function public.fn_get_stock(get_stock_id int) returns setof json as $$
	declare
		update_is_valid boolean;
	begin
		return query SELECT json_build_object('symbol', symbol, 'name', "name")
                FROM public.stock_symbols
                WHERE symbol_id = get_stock_id;
	end;
$$ language plpgsql;