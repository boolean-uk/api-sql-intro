-- CREATE
CREATE TABLE "products" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price_pence INT NOT NULL,
  is_discounted BOOLEAN DEFAULT false,
  UNIQUE (name)
) 

CREATE TABLE IF NOT EXISTS users (
 id SERIAL PRIMARY KEY,
 username VARCHAR(20) NOT NULL UNIQUE,
 email VARCHAR(50) NOT NULL UNIQUE,
);

-- DROP
-- Deletes the entire table
DROP TABLE users

-- TRUNCATE
-- Clears the table's data but keeps its columns
TRUNCATE users

-- METADATA
-- Use to query the structure of a table
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'users';