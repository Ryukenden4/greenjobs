CREATE TABLE
    jobs (
        id UUID NOT NULL default gen_random_uuid () PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        application_form JSONB NOT NULL DEFAULT '{}',
        location TEXT NOT NULL,
        salary NUMERIC(10,2) NOT NULL,
        rate TEXT NOT NULL,
        duration TEXT NOT NULL, -- Short-Term, Long-Term
        sector TEXT NOT NULL,
        benefits TEXT[] NOT NULL DEFAULT '{}',
        image_urls TEXT[] NOT NULL DEFAULT '{}',
        start_date TIMESTAMP WITH TIME ZONE,
        end_date TIMESTAMP WITH TIME ZONE,
        deadline_at TIMESTAMP WITH TIME ZONE,
        expired_at TIMESTAMP WITH TIME ZONE,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        company_id UUID REFERENCES companies ON DELETE CASCADE NOT NULL
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE jobs ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Public jobs are viewable by everyone." ON jobs FOR
SELECT
    USING (TRUE);

CREATE POLICY "Only company can post jobs." ON jobs FOR INSERT
WITH
    CHECK (auth.uid () = company_id);

CREATE POLICY "Company can update their posts." ON jobs FOR
UPDATE USING (auth.uid () = company_id);