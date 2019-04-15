-- currency: API uses "from" and "to"
-- cryptocurrency: "symbol" (coin) and "market" (fiat)
create table public.user_currency_trackers (
	user_id int references users(id) on delete cascade,
	"from" int4 references currencies(id) on delete cascade,
	"to" int4 references currencies(id) on delete cascade,
	primary key (user_id, "from", "to")
);