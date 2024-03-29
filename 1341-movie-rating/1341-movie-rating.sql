(select name as results
from movierating mg inner join users u on mg.user_id = u.user_id
group by name
order by count(distinct movie_id) desc, name
limit 1)
union all
(select title as results
from movierating mg inner join movies mo on mg.movie_id = mo.movie_id
where extract(year_month from created_at) = 202002
group by title
order by avg(rating) desc, title
limit 1)
