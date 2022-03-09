select s.worker_id,
s.first_name,
s.last_name,
s.salary,
s.joining_date,
s.department from (select *, RIGHT(first_name,1) as Last_Character from worker)s where s.Last_Character like '%a%'