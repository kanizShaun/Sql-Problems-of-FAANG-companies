select a.* from (select * from worker order by worker_id desc limit 5)a order by a.worker_id asc