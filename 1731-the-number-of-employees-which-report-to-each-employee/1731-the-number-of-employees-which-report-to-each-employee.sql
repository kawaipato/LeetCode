select E1.employee_id, name, reports_count, average_age from
(select reports_to as employee_id, count(*) as reports_count, round(avg(age)) as average_age from Employees
where reports_to is not null
group by reports_to) E1 inner join Employees E2 on E1.employee_id = E2.employee_id
order by E1.employee_id