drop view if exists v_city_clean;
create view v_city_clean as
select m.match_id,
       coalesce(v.city, m.city, 'UNKNOWN') as city_clean
from v_matches_venue m
left join v_venues_clean v
  on m.venue_clean = v.venue;