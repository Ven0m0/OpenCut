-- Add indexes for better performance on authentication tables
-- Created for performance optimization

-- Session table indexes
CREATE INDEX IF NOT EXISTS idx_session_user_id ON "session"("user_id");
CREATE INDEX IF NOT EXISTS idx_session_expires_at ON "session"("expires_at");

-- Account table indexes
CREATE INDEX IF NOT EXISTS idx_account_user_id ON "account"("user_id");
CREATE INDEX IF NOT EXISTS idx_account_provider ON "account"("provider_id", "account_id");

-- Verification table indexes
CREATE INDEX IF NOT EXISTS idx_verification_identifier ON "verification"("identifier");
CREATE INDEX IF NOT EXISTS idx_verification_expires_at ON "verification"("expires_at");
