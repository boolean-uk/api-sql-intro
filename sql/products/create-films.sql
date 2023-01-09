
-- film table created
CREATE TABLE films(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre  VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    score INT NOT NULL,
    UNIQUE(title)
    )
