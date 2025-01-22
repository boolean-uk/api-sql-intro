DROP TABLE if exists directors;
drop table if exists Films;
CREATE TABLE directors(
	directorID SERIAL not null	,
	firstName varchar,
	lastname VARCHAR,
	PRIMARY KEY(directorID)
	);
CREATE TABLE Films(
        FilmID BIGSERIAL PRIMARY KEY ,
        Title VARCHAR,
        Genre VARCHAR,
        releaseYear INT,
        Score INT,
        directorid int REFERENCES directors(directorID)
        );
        
	
INSERT INTO directors(firstname, lastname)
VALUES
	('bob' , 'the builder'),
	('big joe bo ' , 'the boo man'),
	('bobplatsky' , 'the random named'),
	('King B.J' , 'the bald');
	


INSERT INTO Films (Title, Genre, releaseYear, Score, directorID)
VALUES
        ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
        ('The Godfather', 'Crime', 1972, 9, 2),
        ('The Dark Knight', 'Action', 2008, 9, 3),
        ('Alien', 'SciFi', 1979, 9, 3),
        ('Total Recall', 'SciFi', 1990, 8, 1),
        ('The Matrix', 'SciFi', 1999, 8, 2),
        ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
        ('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
        ('The Hunt for Red October', 'Thriller', 1990, 7, 1),
        ('Misery', 'Thriller', 1990, 7, 2),
        ('The Power Of The Dog', 'Western', 2021, 6, 2),
        ('Hell or High Water', 'Western', 2016, 8, 2),
        ('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
        ('Unforgiven', 'Western', 1992, 7, 1);

Select firstName, lastName, title from directors
INNER JOIN Films ON directors.directorID = Films.directorId
GROUP By firstName, lastName, title;
