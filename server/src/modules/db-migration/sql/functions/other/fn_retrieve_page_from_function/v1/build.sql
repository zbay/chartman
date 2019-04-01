-- Assumes function called returns JSON
create or replace function public.fn_retrieve_page_from_function(opts jsonb)
returns setof json
language plpgsql
as $function$
declare
	additional_where_condition text := '1=1';
    alias text := 'q';
    order_by_col_type text := 'int';
	comparison_operator text := '>';
	cursor_point text := '0';
	query_function text;
	function_params text := '';
	order_by_col text := 'id';
	order_direction text := 'ASC';
	per_page int := 100;
	retrieve_query text;
	executed_query text;
begin
	-- Use this function responsibly. Index any columns you end up searching on. Wrap any text cursor_point values in single quotes
	-- Example usage
--	select * from public.fn_retrieve_page_from_function_json('{ "func": "fn_get_my_stocks", "order_by_col": "id"
--		, "func_params": "1", "per_page": 5 }'::jsonb);

	if opts->>'function' is null then
		raise exception 'Pagination function requires a function name!';
	end if;
	query_function = opts->>'function';
	if opts->>'function_params' is not null then
		function_params := opts->>'function_params';
	end if;
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
    if opts->>'alias' is not null then
		alias := opts->>'alias';
	end if;
	retrieve_query := ' SELECT *' ||  
		' FROM public.%I(%s) %s' ||
		' WHERE (%s->>''%I'')::%s %s %s' ||
		' AND %s' ||
		' ORDER BY (%s->>''%I'')::%s %s ' 
		' LIMIT %s';
--	raise exception 'Query is: %s', format(retrieve_query
--		, query_func, func_params, alias
--		, order_by_col, order_by_col_type, comparison_operator, cursor_point
--		, additional_where_condition
--		, order_by_col, order_by_col_type, order_direction
--		, per_page);
	return query execute format(retrieve_query
	, query_function, function_params, alias
	, alias, order_by_col, order_by_col_type, comparison_operator, cursor_point
	, additional_where_condition
	, alias, order_by_col, order_by_col_type, order_direction
	, per_page);
end;
$function$;