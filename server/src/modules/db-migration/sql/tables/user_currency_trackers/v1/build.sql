-- currency: API uses "from" and "to"
-- cryptocurrency: "symbol" (coin) and "market" (fiat)
create table public.user_currency_trackers (
	user_id int references users(id),
	"from" int4 references currencies(id),
	"to" int4 references currencies(id),
	primary key (user_id, "from", "to")
);