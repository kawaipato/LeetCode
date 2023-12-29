# Write your MySQL query statement below
select request_at as day, 
round(sum(status != 'completed') / count(*), 2) as 'Cancellation Rate'
from Trips as T 
left join Users as Clients on T.client_id = Clients.users_id
left join Users as Drivers on T.driver_id = Drivers.users_id
where Clients.banned != 'Yes' and Drivers.banned != 'Yes' and
request_at between '2013-10-01' and '2013-10-03'
group by day