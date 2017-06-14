-- Table definitions for the tournament project.
--
-- create databse Tournament
-- psql tounament

CREATE TABLE players(id SERIAL PRIMARY KEY,
                     player_name TEXT
                    );

CREATE TABLE matches(match_id SERIAL PRIMARY KEY,
                     win_id SERIAL REFERENCES players(id),
                     lose_id SERIAL REFERENCES players(id)
                     );

CREATE VIEW players_lose as
select players.id as ID, COALESCE(count(lose_id),0) as LOSE
from players left join matches on players.id = matches.lose_id
group by players.id
order by LOSE desc;

CREATE VIEW players_wins as
select players.id as ID, COALESCE(count(win_id),0) as WIN
from players left join matches on players.id = matches.win_id
group by players.id
order by WIN desc;

CREATE VIEW standings as
select players_wins.ID as ID ,player_name,players_wins.WIN as WINS ,players_lose.LOSE + players_wins.WIN as matche
from players,players_lose,players_wins
where players.id = players_wins.ID and players_lose.ID = players_wins.ID
order by WINS desc;


