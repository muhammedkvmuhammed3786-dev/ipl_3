-- so a second run works 
-- name the rule
--every column so far
--the list starts
--the old value
--the new value
--everything else 
--close it and name it
---built on fix 1

drop view if exists v_deliveries_typed;
create view v_deliveries_typed as
select *,
     case when bowler_type_clean=
                'Right arm Fast Medium'
          then 'Right arm Fast Medium'
          else bowler_type_clean
     end as bowler_style
from v_deliveries_clean;

drop view if exists v_teams_clean;
create view v_teams_clean as 
select *,
      case when team_name = 'Rising Pune Supergiants'
           then 'Rising Pune Supergiant'
           else team_name
      end as team_name_clean
from teams;