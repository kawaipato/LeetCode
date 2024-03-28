select product_id, year as first_year, quantity, price
from sales S
where (product_id, year) in (
    select
        product_id, min(year)
    from sales group by product_id)