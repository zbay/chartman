create or replace function public.fn_auto_complete_currency(search_query text, currency_types text) returns setof json as $$
	declare
		max_results int2 := 30;
		search_query_middle1 text;
		search_query_middle2 text;
		search_query_start text;
		currency_types_arr text[];
	begin
		currency_types_arr = string_to_array(currency_types, ',');
		if length(search_query) > 5 then
			-- Raise limit if user has entered a reasonably lengthy query
			max_results := 100;
		end if;
		search_query_start := search_query || '%';
		search_query_middle1 := '% ' || search_query || '%';
		search_query_middle2 := '%-' || search_query || '%';
		return query
		select row_to_json(q)
		from (
			SELECT currency_id as id, code, "name" as name
			FROM public.currencies c
			WHERE (c.code ilike search_query_start 
			or c."name" ilike search_query_start
			or c."name" ilike search_query_middle1
			or c."name" ilike search_query_middle2)
			and ((c.is_crypto and 'Crypto' = ANY (currency_types_arr))
				or (not c.is_crypto and 'Fiat' = ANY (currency_types_arr)))
			LIMIT max_results
		) q;
	end;
$$ language plpgsql;