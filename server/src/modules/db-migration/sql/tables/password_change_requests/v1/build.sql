create table public.password_change_requests (
	user_email text unique not null,
	route char(96) not null,
	expires timestamp not null
);
create index password_change_request_route on password_change_requests using hash (route);