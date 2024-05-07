select T.employee_id
from
(select * from employees left join salaries using(employee_id)
union
select * from employees right join salaries using(employee_id)) as T
where T.salary is null or T.name is null
order by employee_id