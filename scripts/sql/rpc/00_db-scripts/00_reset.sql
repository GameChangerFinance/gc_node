-- Recreate {{SCHEMA}} schema
DROP SCHEMA IF EXISTS {{SCHEMA}} CASCADE;

CREATE SCHEMA {{SCHEMA}};

GRANT USAGE ON SCHEMA {{SCHEMA}} TO authenticator, web_anon;

GRANT SELECT ON ALL TABLES IN SCHEMA {{SCHEMA}} TO authenticator, web_anon;

ALTER DEFAULT PRIVILEGES IN SCHEMA {{SCHEMA}} GRANT
SELECT ON TABLES TO authenticator, web_anon;