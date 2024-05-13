-- with last as (SELECT turn, person_id, person_name, SUM(weight) OVER (ORDER BY turn) wgt_sum FROM Queue)

-- select person_name from last
-- where wgt_sum <= 1000
-- order by wgt_sum desc
-- FETCH First 1 ROWS ONLY;
WITH last AS (
    SELECT turn, person_id, person_name, SUM(weight) OVER (ORDER BY turn) AS wgt_sum
    FROM Queue
)
select * from
(SELECT person_name
FROM last
WHERE wgt_sum <= 1000
ORDER BY wgt_sum DESC)
where rownum = 1;
