create or replace function public.fn_delete(table_name text, equality_conditions jsonb)
returns void
language plpgsql
as $function$
declare
	i record;
	delete_query text;
	where_clause text := ' WHERE 1=1';
begin
	FOR i IN SELECT * FROM jsonb_each_text(equality_conditions)
  	LOOP
		where_clause := where_clause || ' AND ' || i."key" || ' = ' || i."value";
  	END LOOP;
		delete_query := ' DELETE' ||  
		' FROM public.%I' ||
		'%s';
	execute format(delete_query
		, table_name
		, where_clause);
end;
$function$;