select distinct num as ConsecutiveNums from 
(select num, LEAD(num) over(order by id) as next_num, LAG(num) over(order by id) as prev_num from logs) as li
where num = next_num and num = prev_num;