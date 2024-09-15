CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title varchar(40) not null unique,
 genre varchar(10) not null,
 release_date int not null,
 score INT CHECK (score > 0 AND score < 11)
);


