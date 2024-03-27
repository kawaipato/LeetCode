select round(count(distinct player_id) / (select count(distinct player_id) from activity),2) as fraction
from activity
where (player_id, date_sub(event_date, interval 1 day)) in
(select player_id, min(event_date) as first_login from activity group by player_id)
# from activity where games_played > 0 
# group by player_id
# having count(player_id) >= 2