CREATE table films(
		id serial PRIMARY KEY,
  	name VARCHAR(100) UNIQUE NOT NULL,
  	genre VARCHAR(100) NOT NULL,
		release_year INTEGER NOT NULL,
  	score INTEGER NOT NULL
);

CREATE table directors(
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);