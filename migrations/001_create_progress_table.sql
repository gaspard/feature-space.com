-- Create progress table for storing user stack progress
CREATE TABLE IF NOT EXISTS progress (
  id BIGSERIAL PRIMARY KEY,
  user_id UUID NOT NULL,
  stack_id TEXT NOT NULL,
  active BOOLEAN NOT NULL DEFAULT false,
  cards JSONB NOT NULL DEFAULT '{}',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(user_id, stack_id)
);

-- Create index on user_id for faster queries
CREATE INDEX IF NOT EXISTS idx_progress_user_id ON progress(user_id);

-- Create index on stack_id for faster queries
CREATE INDEX IF NOT EXISTS idx_progress_stack_id ON progress(stack_id);

-- Create index on user_id and stack_id combination
CREATE INDEX IF NOT EXISTS idx_progress_user_stack ON progress(user_id, stack_id);

-- Enable Row Level Security
ALTER TABLE progress ENABLE ROW LEVEL SECURITY;

-- Create policy to allow users to read their own progress
CREATE POLICY "Users can read their own progress"
  ON progress
  FOR SELECT
  USING (auth.uid() = user_id);

-- Create policy to allow users to insert their own progress
CREATE POLICY "Users can insert their own progress"
  ON progress
  FOR INSERT
  WITH CHECK (auth.uid() = user_id);

-- Create policy to allow users to update their own progress
CREATE POLICY "Users can update their own progress"
  ON progress
  FOR UPDATE
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

-- Create policy to allow users to delete their own progress
CREATE POLICY "Users can delete their own progress"
  ON progress
  FOR DELETE
  USING (auth.uid() = user_id);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update updated_at
CREATE TRIGGER update_progress_updated_at
  BEFORE UPDATE ON progress
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

