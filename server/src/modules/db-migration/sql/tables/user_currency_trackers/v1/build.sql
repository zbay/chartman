-- currency: API uses "from" and "to"
-- cryptocurrency: "symbol" (coin) and "market" (fiat)
create table public.user_currency_trackers (
	user_id serial references users(user_id),
	"from" int4 references currencies(currency_id),
	"to" int4 references currencies(currency_id),
	primary key (user_id, "from", "to")
);