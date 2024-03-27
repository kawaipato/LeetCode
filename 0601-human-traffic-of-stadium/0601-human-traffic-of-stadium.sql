with stadium_with_rnk as(
    (select id, visit_date, people, rnk, (id - rnk) as island
    from (select id, visit_date, people, rank() over(order by id) as rnk
    from stadium
    where people >= 100) as T))
    
select id, visit_date, people from stadium_with_rnk
where island in (select island
                from stadium_with_rnk
                group by island
                having count(*) >= 3)
order by id