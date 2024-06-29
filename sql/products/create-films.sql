create TABLE films (
	id                  serial primary key,
	title               TEXT unique,
	genre 	            TEXT,
	release_year		int,
	score_out_of_ten	INT
)