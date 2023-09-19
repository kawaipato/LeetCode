select id, sum(num) as num
from (select accepter_id id, count(accepter_id) as num from requestaccepted group by accepter_id
union all
select requester_id id, count(requester_id) as num from requestaccepted group by requester_id) wow
group by id
order by num desc
limit 1