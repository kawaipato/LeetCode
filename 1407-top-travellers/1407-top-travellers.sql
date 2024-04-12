select name, ifnull(sum(R.distance),0) as travelled_distance
from Users U left join Rides R on U.id = R.user_id
group by u.id
order by travelled_distance desc, name asc