-- Table definitions for the tournament project.
--
-- create databse Tournament
-- psql tounament

CREATE TABLE players(id SERIAL PRIMARY KEY,
                     player_name TEXT ,
                     created_at TIMESTAMP default CURRENT_TIMESTAMP );

CREATE TABLE matches(match_id SERIAL PRIMARY KEY,
                     player1 INTEGER REFERENCES players(id),
                     player2 INTEGER REFERENCES players(id),
                     winner INTEGER REFERENCES players(id) );





