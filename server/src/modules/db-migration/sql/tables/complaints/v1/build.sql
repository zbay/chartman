create table public.complaints (
	id serial,
	"timestamp" timestamp,
	message_id text,
	complained_recipient text not null -- email
);
