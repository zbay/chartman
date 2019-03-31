create or replace function public.fn_get_currency_pair(from_id int, to_id int) 
RETURNS setof json AS $$
begin
	return query select json_build_object('from'
	, (select row_to_json(f) from (select * from public.currencies where id = from_id) f)
	, 'to'
	, (select row_to_json(t) from (select * from public.currencies where id = to_id) t));	
END;
$$ LANGUAGE plpgsql;