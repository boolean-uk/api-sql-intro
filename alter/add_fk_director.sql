ALTER TABLE movies ADD CONSTRAINT FK_director FOREIGN KEY (director_id) REFERENCES directors(id)