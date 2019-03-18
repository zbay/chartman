CREATE OR REPLACE FUNCTION public.fn_save_complaint(complaint_obj jsonb)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
        BEGIN
        	insert into public.complaints ("timestamp", message_id, complained_recipient)
        	values ((complaint_obj->>'timestamp')::timestamp, complaint_obj->>'message_id',
        	complaint_obj->>'complained_recipient');
        END;
$function$;
