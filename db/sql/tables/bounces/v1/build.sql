create table public.bounces (
    id serial,
	bounce_type text,
	bounce_subtype text,
	"timestamp" timestamp,
	bounce_recipient text not null -- email
);
