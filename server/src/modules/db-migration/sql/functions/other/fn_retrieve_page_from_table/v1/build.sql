
create or replace function public.fn_retrieve_page_from_table(opts jsonb)
returns setof json
language plpgsql
as $function$
declare
comparison_operator text := '>';
cursor_point int := 0;
order_by_col text := 'id';
order_direction text := 'ASC';
per_page int := 100;
retrieve_query text;
query_table text;
	begin
		if opts->>'table' is null then
			raise exception 'Pagination function requires a table name!';
		end if;
		query_table = opts->>'table';
		if opts->>'order_by_col' is not null then
			order_by_col := opts->>'order_by_col';
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
		retrieve_query := 'SELECT row_to_json(q) FROM (' ||
			' SELECT *' ||  
			' FROM public.' || query_table ||
			' WHERE ' || order_by_col || ' ' || comparison_operator || ' ' || cursor_point ||
			' ORDER BY ' || order_by_col || ' ' || order_direction ||
			' LIMIT ' || per_page::text || ') q';
		return query execute retrieve_query;
	end;
$function$;