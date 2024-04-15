select user_id as buyer_id, join_date, sum(case when year(order_date) = 2019 then 1 else 0 end) as orders_in_2019
from Orders O right join Users U on O.buyer_id = U.user_id
group by user_id
order by user_id