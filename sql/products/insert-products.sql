insert into products(name, price, discount) VALUES ('apple', 135, false);
insert into products(name, price, discount) VALUES ('orange', 55, true);
insert into products(name, price, discount) VALUES ('kiwi', 165, true);
insert into products(name, price, discount) VALUES ('banana', 035, false);



CREATE TABLE IF NOT EXISTS films (
id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
    );
