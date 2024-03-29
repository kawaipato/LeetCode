select P.product_id, product_name
from product P inner join sales S on P.product_id = S.product_id
group by product_id, product_name
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'