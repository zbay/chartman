create table user_roles (
	id serial primary key,
	expiration date, -- use cron job to delete expired roles, from here and from the users table
	user_id int4 references users (id),
	role_id int4 references roles (id),
	unique(user_id, role_id)
);
create index user_roles_user_id on user_roles using hash (user_id);
create index on user_roles (expiration);