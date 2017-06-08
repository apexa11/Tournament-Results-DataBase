-- Table definitions for the tournament project.
--
-- create databse Tournament
-- psql tounament

CREATE TABLE players(id SERIAL PRIMARY KEY,
                     name TEXT ,
                     created_at TIMESTAMP default CURRENT_TIMESTAMP );

CREATE TABLE matches(id SERIAL PRIMARY KEY,
                     winner_id INT,
                     loser_id INT,
                     FOREIGN KEY (winner_id) REFERENCES players(id),
                     FOREIGN KEY (loser_id) REFERENCES players(id));





