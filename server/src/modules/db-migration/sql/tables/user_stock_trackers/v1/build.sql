create table public.user_stock_trackers (
	user_id serial references users(user_id),
	stock_id int4 references stock_symbols(symbol_id),
	primary key (user_id, stock_id)
);