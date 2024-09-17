create table films (
                       film_id INT PRIMARY KEY AUTO_INCREMENT,
                       director_id INT REFERENCES directors(director_id),
                       title VARCHAR(255) NOT NULL,
                       genre VARCHAR(255),
                       release_year INTEGER,
                       score INT CHECK (score >= 0 AND score <= 10)
)