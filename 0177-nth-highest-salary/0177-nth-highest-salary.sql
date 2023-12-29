CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
   with T as (select *, dense_rank() over (order by salary desc) as rnk from Employee)
    select distinct(salary) from T where rnk = N
  );
END