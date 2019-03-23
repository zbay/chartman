create or replace function public.fn_auto_complete_stock(search_query text) returns setof json as $$
	declare
		max_results int2 := 30;
		search_query_middle text;
		search_query_start text;
	begin
		search_query_start := search_query || '%';
		search_query_middle := '% ' || search_query || '%';
		if length(search_query) > 5 then
			-- Raise limit if user has entered a reasonably lengthy query
			max_results := 100;
		end if;
		return query 
		select row_to_json(q)
		from (
			SELECT symbol_id as id, symbol as symbol, "name" as name
			FROM public.stock_symbols
			WHERE symbol ilike search_query_start 
			or "name" ilike search_query_start
			or "name" ilike search_query_middle
			LIMIT max_results
		) q;		
	end;
$$ language plpgsql;