(select * from worker where department = 'HR')
union 
(select worker_id,
first_name,
last_name,
salary,
joining_date,
department from worker where department = 'HR')
