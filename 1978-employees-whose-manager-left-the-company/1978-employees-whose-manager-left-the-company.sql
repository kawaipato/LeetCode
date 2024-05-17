select a.employee_id
from employees a left join employees b on b.employee_id = a.manager_id
where b.employee_id is null and a.salary < 30000 and a.manager_id is not null
order by a.employee_id;