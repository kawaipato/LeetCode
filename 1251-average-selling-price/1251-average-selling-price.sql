select p.product_id, nvl(round((sum(u.units * p.price) / sum(u.units)),2),0)average_price
from prices p left join unitssold u on u.purchase_date between p.start_date and p.end_date and p.product_id = u.product_id
group by p.product_id;