
create or replace function public.fn_retrieve_page_from_query(opts jsonb)
returns setof json
language plpgsql
as $function$
declare
	additional_where_condition text := '1=1';
	comparison_operator text := '>';
	cursor_point text := '0';
	order_by_col text := 'id';
	order_direction text := 'ASC';
	per_page int := 100;
	retrieve_query text;
	query_table text;
begin
	-- Use this function responsibly. Index any columns you end up searching on. Wrap any text cursor_point values in single quotes
	-- Example usage
    --	select * from public.fn_retrieve_page_from_table('{ "table": "currencies", "order_by_col": "code"
    --		, "per_page": 5, "search_condition": "is_crypto", "cursor_point": "''ADT''" }'::jsonb);

	if opts->>'table' is null then
		raise exception 'Pagination function requires a table name!';
	end if;
	query_table = opts->>'table';
	if opts->>'order_by_col' is not null then
		order_by_col := opts->>'order_by_col';
	end if;
	if opts->>'order_direction' ILIKE 'DESC' then
		comparison_operator := '<';
		order_direction := 'DESC';
	end if;
	if opts->>'per_page' is not null then
		per_page := opts->>'per_page';
	end if;
	if opts->>'cursor_point' is not null then
		cursor_point := opts->>'cursor_point';
	end if;
	if opts->>'where_condition' is not null then
		additional_where_condition := opts->>'where_condition';
	end if;
	retrieve_query := 'SELECT row_to_json(q) FROM (' ||
		' SELECT *' ||  
		' FROM public.' || query_table ||
		' WHERE ' || order_by_col || ' ' || comparison_operator || ' ' || cursor_point ||
		' AND ' || additional_where_condition ||
		' ORDER BY ' || order_by_col || ' ' || order_direction ||
		' LIMIT ' || per_page::text || ') q';
	return query execute retrieve_query;
end;
$function$;
