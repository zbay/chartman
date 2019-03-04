create table public.migrations (
	filename text unique not null,
	ran timestamp default current_timestamp
);
