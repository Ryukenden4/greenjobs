CREATE TABLE
    job_posting_payments (
        id UUID NOT NULL default gen_random_uuid () PRIMARY KEY,
        updated_at TIMESTAMP WITH TIME ZONE,
        status TEXT NOT NULL, -- pending, paid
        amount NUMERIC(10,2) NOT NULL,
        stripe_payment_id TEXT NOT NULL,
        company_id UUID REFERENCES companies ON DELETE CASCADE NOT NULL,
        job_id UUID REFERENCES jobs ON DELETE CASCADE NOT NULL
    );

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/auth/row-level-security for more details.
ALTER TABLE job_posting_payments ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Job posting payments are viewable by company only." ON job_posting_payments FOR
SELECT
    USING (auth.uid() = company_id);