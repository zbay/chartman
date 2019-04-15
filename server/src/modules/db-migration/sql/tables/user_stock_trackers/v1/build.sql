create table public.user_stock_trackers (
	user_id int references users(id) on delete cascade,
	stock_id int4 references stock_symbols(id) on delete cascade,
	primary key (user_id, stock_id)
);