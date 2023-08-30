select customer_number from (select count(order_number) cnt, customer_number from orders
group by customer_number order by cnt desc)
where rownum = 1