create table public.users (
	user_id serial primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email text unique not null,
	"password" text not null,
	roles text[],
	last_login_attempt timestamp,
	strikes smallint default 0
);
create index user_email on users using hash (email);