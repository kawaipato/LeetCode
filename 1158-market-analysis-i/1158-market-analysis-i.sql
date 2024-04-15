select u.user_id as buyer_id, join_date, count(o.order_id) as orders_in_2019
from Orders O right join Users U on O.buyer_id = U.user_id and year(order_date) = 2019
group by user_id
order by user_id