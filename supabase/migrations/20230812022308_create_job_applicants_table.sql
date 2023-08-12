
CREATE TABLE
    job_applicants (
        id UUID NOT NULL default gen_random_uuid () PRIMARY KEY,
        job_id UUID REFERENCES jobs ON DELETE CASCADE NOT NULL,
        user_id UUID REFERENCES users ON DELETE CASCADE NOT NULL,
        company_id UUID REFERENCES companies ON DELETE CASCADE NOT NULL,
        application_form JSONB NOT NULL,
        updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
        status TEXT NOT NULL -- applied, cancelled, not_accepted, accepted, started, finished, approved, rejected
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE job_applicants ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Jobs applicants are viewable by company and users only." ON job_applicants FOR
SELECT
    USING (auth.uid() = user_id OR auth.uid() = company_id);

CREATE POLICY "Only users can apply job." ON job_applicants FOR INSERT
WITH
    CHECK (auth.uid () = user_id);

CREATE POLICY "users and Company can update the job application." ON job_applicants FOR
UPDATE USING (auth.uid () = user_id OR auth.uid() = company_id);