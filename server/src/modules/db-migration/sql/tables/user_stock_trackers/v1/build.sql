create table public.user_stock_trackers (
	user_id int references users(id),
	stock_id int4 references stock_symbols(id),
	primary key (user_id, stock_id)
);