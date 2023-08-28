-- select name from salesperson 
-- where name not in
-- (select s.name from salesperson s left join orders o on (o.sales_id = s.sales_id) left join company c on (c.com_id = o.com_id)
-- where c.name = 'Red')

SELECT name FROM SalesPerson  WHERE name NOT IN (SELECT S.name FROM

SalesPerson S, Company C,Orders O WHERE S.sales_id = O.sales_id 

AND C.com_id = O.com_id AND C.name='RED')