# Solution file:

## SQL sentences:

### Table creation:

				CREATE TABLE Films (
					id serial PRIMARY KEY,
					title VARCHAR(255) NOT NULL UNIQUE,
					genre VARCHAR(255) NOT NULL,
					released INTEGER NOT NULL CHECK (released BETWEEN 1000 and 9999),
					score INTEGER NOT NULL CHECK(score between 1 and 10)	
				);

### Correcting table name to singular form:

				ALTER TABLE films
				RENAME TO film			

### Adding entries:
				INSERT INTO film
					(title, genre, released, score)
				VALUES
					('The Shawshank Redemption', 'Drama', 1994, 9),
					('The Godfather', 'Crime', 1972, 9),
					('The Dark Knight', 'Action', 2008, 9),
					('Alien', 'SciFi', 1979, 9),
					('Total Recall', 'SciFi', 1990, 8),
					('The Matrix', 'SciFi', 1998, 8),
					('The Matrix Resurrections', 'SciFi', 2021, 5),
					('The Matrix Reloaded', 'SciFi', 2003, 6),
					('The Hunt for Red October', 'Thriller', 1990, 7),
					('Misery', 'Thriller', 1990, 7),
					('The Power Of The Dog', 'Western', 2021, 6),
					('Hell or High Water', 'Western', 2016, 8),
					('The Good the Bad and the Ugly', 'Western', 1996, 9),
					('Unforgiven', 'Western', 1992, 7)

### Queries:
#### All films:
		select * from film
#### Score desc:
		select * from film order by score desc

#### Relase ascending:
		select * from film order by released
#### Rating of 8 or higher:
		select * from film where (score >= 8)
#### Rating of 7 or lower:
		select * from film where (score <= 7)
#### Released in 1990:
		select * from film where (released = 1990)
#### Released before 2000:
		select * from film where (released < 2000)
#### Released after 1990:
		select * from film where (released > 1990)
#### Released between 1990 and 1999:
		select * from film where (released > 1990) and (released < 1999)
#### With the genre of "SciFi":
		select * from film where genre = 'SciFi'
#### With the genre of "Western" OR "SciFi":
		select * from film where genre = 'SciFi' OR genre = 'Western'
#### Anything but SciFi:
				select * from film where genre != 'SciFi'
#### Western released before 2000:
		select * from film where genre = 'Western' AND (released < 2000)
#### Films with the word "Matrix" in their title:
		select * from film where title like '%Matrix%'

## Extension 1:

#### Return the average film rating:
		select ROUND(AVG(score), 2) AS ScoreAverage
		from film
#### The number of films:
		select COUNT(title) from film

#### Average rating by genre:

		select genre, ROUND(AVG(score), 2) AS ScoreAverage
		from film
		group by genre

## Extension 2:

#### Create director table:

		CREATE TABLE Director(
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL
	);

#### Insert into director table:
		insert into director
		(name)
		VALUES
		('Frank Darabon'),
		('Francis Ford Coppola'),
		('Cristopher Nolan'),
		('Ridley Scott'),
		('Paul Verhoven'),
		('Lana & Lilly Wachowski'),
		('Lana Wachowski'),
		('John Mctiernan'),
		('Rob Reiner'),
		('Jane Campion'),
		('David Mackenzie'),
		('Sergio Leone'),
		('Clint Eastwood')

#### Alter film to include director:

		ALTER TABLE film
		ADD directorId INT 
#### Update directorId to corresponding film records:

	update film
	set directorid = 1
	where film.title = 'The Shawshank Redemption';
	update film
	set directorid = 2
	where film.title = 'The Godfater';
	update film
	set directorid = 3
	where film.title = 'The Dark Knight';
	update film
	set directorid = 4
	where film.title = 'Total Recall';

	etc:

#### Return a list of films with their director:

		select film.title, director."name" AS DirectorName
	from film
	left join director
	on film.directorid = director.id

## Extension 3:
#### Return a list of directors along with the number of films they have directed

	select director."name" as director, count(film.directorid) AS filmsdirected  from director
	left join film
	on director.id = film.directorid
	group by director
	order by filmsdirected desc	

	