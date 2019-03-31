create table public.stock_symbols (
	id serial primary key,
	exchange_id int4 references exchanges(exchange_id),
	symbol text not null,
	"name" text not null
);

CREATE INDEX stock_symbols_name_text_idx 
ON public.stock_symbols 
USING GIN ("name" gin_trgm_ops);

CREATE INDEX stock_symbols_symbol_text_idx 
ON public.stock_symbols 
USING GIN (symbol gin_trgm_ops);