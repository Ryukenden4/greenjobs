
-- Create a table for public profiles
CREATE TABLE
    users (
        id UUID REFERENCES auth.users ON DELETE CASCADE NOT NULL PRIMARY KEY,
        updated_at TIMESTAMP WITH TIME ZONE,
        name TEXT NOT NULL,
        location TEXT,
        work_experience jsonb,
        field_interests jsonb,
        avatar_url TEXT,
        is_verified BOOLEAN default false
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE users ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public users are viewable by everyone." ON users FOR
SELECT
    USING (TRUE);

CREATE POLICY "users can insert their own profile." ON users FOR INSERT
WITH
    CHECK (auth.uid () = id);

CREATE POLICY "users can update own profile." ON users FOR
UPDATE USING (auth.uid () = id);


-- Set up Storage!
INSERT INTO
    STORAGE.buckets (id, NAME)
VALUES
    ('avatars', 'avatars');

-- Set up access controls for storage.
-- See https://supabase.com/docs/guides/storage#policy-examples for more details.
CREATE POLICY "Avatar images are publicly accessible." ON STORAGE.objects FOR
SELECT
    USING (bucket_id = 'avatars');

CREATE POLICY "Anyone can upload an avatar." ON STORAGE.objects FOR INSERT
WITH
    CHECK (bucket_id = 'avatars');