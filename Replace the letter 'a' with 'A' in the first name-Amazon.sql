select worker_id,
replace(first_name,'a', 'A') as first_name,
last_name,
salary,
joining_date,
department from worker;