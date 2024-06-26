select machine_id, round(sum(case when activity_type = 'start' then - 1.0 * timestamp
                       else 1.0 * timestamp end) / count(distinct(process_id)), 3) as processing_time
from activity group by machine_id