select distinct A.*
from stadium as a, stadium as b, stadium as c
where a.people >= 100 and b.people >= 100 and c.people >= 100
and (
        (b.id - a.id = 1 and c.id - b.id = 1)
    or  (a.id - b.id = 1 and b.id - c.id = 1)
    or  (b.id - a.id = 1 and a.id - c.id = 1))
order by id