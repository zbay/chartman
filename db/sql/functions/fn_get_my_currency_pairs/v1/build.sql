CREATE OR REPLACE FUNCTION public.fn_get_my_currency_pairs(pair_user_id integer)
 RETURNS SETOF json
 LANGUAGE plpgsql
AS $function$
begin
	-- select both currencies, with one the numerator and the other the denominator of a json object
	return query select json_build_object('sortID', f.code || 'v' || t.code
		,'from'
			, json_build_object('id', f.currency_id, 'code',  f.code, 'name', f."name", 'is_crypto', f.is_crypto)
		, 'to'
			, json_build_object('id', t.currency_id, 'code',  t.code, 'name', t."name", 'is_crypto', t.is_crypto))
	from public.user_currency_trackers uct
	join public.currencies f
		on uct."from" = f.currency_id
	join public.currencies t 
		on uct."to" = t.currency_id
	where user_id = pair_user_id;
end;
$function$;