-- Create a table for public companies
CREATE TABLE
    companies (
        id UUID REFERENCES auth.users ON DELETE CASCADE NOT NULL PRIMARY KEY,
        updated_at TIMESTAMP WITH TIME ZONE,
        name TEXT,
        representativeName TEXT NOT NULL,
        representativeEmail TEXT NOT NULL,
        representativePhone TEXT NOT NULL,
        location TEXT default '',
        sector TEXT,
        avatar_url TEXT,
        stripe_customer_id TEXT
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE companies ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public companies are viewable by everyone." ON companies FOR
SELECT
    USING (TRUE);

CREATE POLICY "Companies can insert their own profile." ON companies FOR INSERT
WITH
    CHECK (auth.uid () = id);

CREATE POLICY "Companies can update own profile." ON companies FOR
UPDATE USING (auth.uid () = id);
