with z as (select * from students a cross join subjects b);
select z.student_id, z.student_name, z.subject_name, count(e.subject_name) as attended_exams 
from z left join examinations e on z.student_id = e.student_id and
z.subject_name = e.subject_name
group by z.student_id, z.student_name, z.subject_name
order by z.student_id, z.subject_name;