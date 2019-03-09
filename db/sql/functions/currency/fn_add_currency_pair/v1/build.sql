create or replace function public.fn_add_currency_pair (pair_user_id int, from_id int, to_id int)
returns void as $$
begin
	insert into public.user_currency_trackers (user_id, "from", "to")
	values (pair_user_id, from_id, to_id)
	on conflict (user_id, "from", "to") do nothing;
end;
$$ language plpgsql;