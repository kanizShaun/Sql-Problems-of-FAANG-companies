select a.salary from (select distinct salary from worker order by salary asc limit 5)a order by a.salary desc