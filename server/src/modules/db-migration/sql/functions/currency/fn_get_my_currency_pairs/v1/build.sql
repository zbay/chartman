CREATE OR REPLACE FUNCTION public.fn_get_my_currency_pairs(pair_user_id integer, search_query text DEFAULT ''::text)
 RETURNS SETOF json
 LANGUAGE plpgsql
AS $function$
declare 
	search_query_wc text;
begin
	search_query_wc := '%' || search_query || '%';
	-- select both currencies, with one the numerator and the other the denominator of a json object
	return query select json_build_object('sort_id', f.code || 'v' || t.code
		,'from'
			, json_build_object('id', f.id, 'code',  f.code, 'name', f."name", 'is_crypto', f.is_crypto)
		, 'to'
			, json_build_object('id', t.id, 'code',  t.code, 'name', t."name", 'is_crypto', t.is_crypto))
	from public.user_currency_trackers uct
	join public.currencies f
		on uct."from" = f.id
	join public.currencies t 
		on uct."to" = t.id
	where user_id = pair_user_id
	and (f.code ilike search_query_wc or t.code ilike search_query_wc or f."name" ilike search_query_wc or t."name" ilike search_query_wc);
end;
$function$;