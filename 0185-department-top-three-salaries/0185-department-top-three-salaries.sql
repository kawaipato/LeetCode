select d.name as department, e1.name as employee, e1.salary from employee e1 inner join department d on (e1.departmentid = d.id)
where 3 > (select count(distinct(e2.salary)) from employee e2 where e2.salary > e1.salary and e1.departmentid = e2.departmentid)
order by salary desc