create or replace function public.fn_retrieve_page_from_table(opts jsonb)
returns setof json
language plpgsql
as $function$
declare
	additional_where_condition text := '1=1';
	comparison_operator text := '>';
	cursor_point text := '0';
	order_by_col text := 'id';
	order_by_col_type text := 'int';
	order_direction text := 'ASC';
	per_page int := 100;
	retrieve_query text;
	retrieved_columns text := '*';
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
	if opts->>'order_by_col_type' is not null then
		order_by_col_type := opts->>'order_by_col_type';
	end if;
	if opts->>'order_direction' = 'DESC' then
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
	if opts->>'retrieved_columns' is not null then
		retrieved_columns := opts->>'retrieved_columns';
	end if;
	retrieve_query := 'SELECT row_to_json(q) FROM (' ||
		' SELECT %s' ||  
		' FROM public.%I' ||
		' WHERE %I %s ''%s''::%s' || -- 		' WHERE (%s->>''%I'')::%s %s ''%s''::%s' ||
		' AND %s' ||
		' ORDER BY %I %s ' 
		' LIMIT %s) q';
--	raise exception 'Query is: %s', format(retrieve_query
--	, retrieved_columns
--	, query_table
--	, order_by_col, comparison_operator, cursor_point, order_by_col_type
--	, additional_where_condition
--	, order_by_col, order_direction
--	, per_page);
	return query execute format(retrieve_query
	, retrieved_columns
	, query_table
	, order_by_col, comparison_operator, cursor_point, order_by_col_type
	, additional_where_condition
	, order_by_col, order_direction
	, per_page);
end;
$function$;