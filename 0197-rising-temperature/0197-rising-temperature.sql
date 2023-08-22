/* Write your PL/SQL query statement below */
select id from
(select id, recordDate, temperature, lag(temperature) over (order by recorddate) as temperature_y, lag(recorddate) over (order by recorddate) as recorddate_y from weather order by recorddate)
where temperature > temperature_y and recorddate = recorddate_y + 1;