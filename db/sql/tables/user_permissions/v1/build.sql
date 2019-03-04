create table user_permissions (
	id serial primary key,
	expiration date, -- use cron job to delete expired permissions, from here and from the users table
	user_id int4 references users (user_id),
	permission_id int4 references permissions (permission_id)
);
create index user_permissions_user_id on user_permissions using hash (user_id);
