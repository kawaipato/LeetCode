with base as (
    select *,
        lead(id, 1) over(order by id) as next_id,
        lead(id, 2) over(order by id) as sec_next_id,
        lag(id, 1) over(order by id) as last_id,
        lag(id, 2) over(order by id) as sec_last_id
    from stadium
    where people >= 100)
    
select id, visit_date, people from base
where (next_id - id = 1 and sec_next_id - next_id = 1)
    or (next_id - id = 1 and id - last_id = 1)
    or (id - last_id = 1 and last_id - sec_last_id = 1)
order by id