-- This trigger automatically creates a profile entry when a new user signs up via Supabase Auth.
-- See https://supabase.com/docs/guides/auth/managing-user-data#using-triggers for more details.
CREATE FUNCTION public.handle_new_user () RETURNS TRIGGER AS $$
BEGIN

    IF ((NEW.raw_user_meta_data -> 'companyName') IS NOT NULL) THEN
        INSERT INTO
            public.companies (id, name, representativeName, representativeEmail, representativePhone)
        VALUES
            (NEW.id, NEW.raw_user_meta_data ->> 'companyName', NEW.raw_user_meta_data ->> 'representativeName', NEW.raw_user_meta_data ->> 'representativeEmail', NEW.raw_user_meta_data ->> 'representativePhone');
        
        UPDATE
            auth.users
        SET
            phone = (NEW.raw_user_meta_data ->> 'representativePhone')
        WHERE 
            id = NEW.id;

        RETURN NEW;
    ELSE 
        INSERT INTO
            public.users (id, name)
        VALUES
            (NEW.id, NEW.raw_user_meta_data ->> 'name');
        RETURN NEW;
    END IF;



END;
$$ LANGUAGE plpgsql SECURITY DEFINER;


CREATE TRIGGER on_auth_user_created
AFTER INSERT ON auth.users FOR EACH ROW
EXECUTE PROCEDURE public.handle_new_user ();