create or replace function public.fn_update_user(user_obj jsonb, update_user_id int4) RETURNS json AS $$
		declare 
			just_updated_user record;
			email_taken boolean;
        begin
	          email_taken = (
	         	select count(1) 
	         	from public.users u
	         	where u.email = user_obj->>'email'
	         	and update_user_id <> u.id) > 0;
	         	
	         if email_taken then
	         	raise exception 'This email address has already been taken. Try another one.';
	         end if;
	          
	          update public.users
	          set first_name = user_obj->>'first_name',
	          	last_name = user_obj->>'last_name',
	          	email = user_obj->>'email',
	          	"password" = user_obj->>'password'
	          where id = update_user_id;
	         
	         select id, email, roles from users where email = user_obj->>'email' into just_updated_user;

             return row_to_json(just_updated_user);
        END;
$$ LANGUAGE plpgsql; 