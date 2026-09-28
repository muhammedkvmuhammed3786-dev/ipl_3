-- so a second run works
-- name the rule
-- keep the key
-- keep the raw value
-- take 4 characters
-- then make it a number
-- read the raw table
DROP VIEW IF EXISTS v_season;
CREATE VIEW v_season AS
SELECT match_id,
       season,
       CAST(SUBSTR(season, 1, 4) AS INTEGER) AS season_year
FROM matches;