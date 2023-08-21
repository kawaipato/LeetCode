/* Write your PL/SQL query statement below */
select a.name as employee from employee a, employee b where a.managerid = b.id and a.salary > b.salary