CREATE TABLE films(
id SERIAL PRIMARY KEY,
title VARCHAR(50) NOT NULL UNIQUE,
genre VARCHAR(255),
release_date INT,
score_out_of_10 INT
)
