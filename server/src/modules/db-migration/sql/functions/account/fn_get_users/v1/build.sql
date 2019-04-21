CREATE OR REPLACE FUNCTION public.fn_get_users(search_query text DEFAULT ''::text)
 RETURNS SETOF json
 LANGUAGE plpgsql
AS $function$
declare 
	search_query_wc text;
begin
	search_query_wc := '%' || search_query || '%';
	return query
		SELECT row_to_json(q) from (
		select * from (select id, last_name || ', ' || first_name as "name"
		, email, public.fn_get_user_roles(u.id) as roles, last_login::date as last_login
		, strikes, first_name, last_name
		from public.users u) q
		where q."name" ilike search_query_wc or q.email ilike search_query_wc
    ) q;
end;
$function$;