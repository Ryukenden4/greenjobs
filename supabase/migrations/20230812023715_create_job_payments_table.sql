CREATE TABLE
    job_payments (
        id UUID NOT NULL default gen_random_uuid () PRIMARY KEY,
        status TEXT NOT NULL, -- pending, paid
        amount NUMERIC(10,2) NOT NULL,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        user_id UUID REFERENCES users ON DELETE CASCADE NOT NULL,
        job_id UUID REFERENCES jobs ON DELETE CASCADE NOT NULL,
        company_id UUID REFERENCES companies ON DELETE CASCADE NOT NULL
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE job_payments ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Jobs payments are viewable by company and users only." ON job_payments FOR
SELECT
    USING (auth.uid() = user_id OR auth.uid() = company_id);