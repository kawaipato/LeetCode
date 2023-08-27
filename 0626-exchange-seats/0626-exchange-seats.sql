/* Write your PL/SQL query statement below */
select (case 
       when id = (select max(id) from seat) and mod(id,2) != 0 then id
       when mod(id,2) = 0 then id - 1 
       when mod(id,2) != 0 then id + 1 end) as id, student from seat order by 1
