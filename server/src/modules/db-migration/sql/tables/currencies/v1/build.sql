create table public.currencies (
	id serial primary key,
	code text not null,
	"name" text not null,
	is_crypto boolean default false
);

CREATE INDEX currencies_name_text_idx 
ON public.currencies 
USING GIN ("name" gin_trgm_ops);

CREATE INDEX currencies_code_text_idx 
ON public.currencies 
USING GIN (code gin_trgm_ops);