CREATE OR REPLACE FUNCTION public.fn_save_bounce(bounce_obj jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
        BEGIN
        	insert into public.bounces (bounce_type, bounce_subtype, "timestamp", bounce_recipient)
        	values (bounce_obj->>'bounce_type', bounce_obj->>'bounce_subtype', (bounce_obj->>'timestamp')::timestamp,
        	bounce_obj->>'bounce_recipient');
        END;
$function$;
