DROP TABLE IF EXISTS matches_clean; --so a second run works
CREATE TABLE matches_clean AS       --
SELECT m.match_id,
       m.venue_clean,
       c.city_clean,
       s.season_year,
       m.result,
       m.match_winner,
       m.player_of_match,
       m.toss_winner,
       m.toss_decision
from v_matches_venue m
join v_city_clean c on c.match_id = m.match_id
join v_season     s on s.match_id = m.match_id;