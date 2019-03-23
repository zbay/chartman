create table error_log (
	"timestamp" timestamp default current_timestamp,
	user_id int4,
	"url" text,
	"message" text,
	stack text
);
create index error_log_timestamp on error_log ("timestamp"); 
