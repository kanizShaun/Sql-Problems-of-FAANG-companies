#Find customers who appear in the orders table more than three times. 
select a.cust_id from (select cust_id, count(cust_id) as number_of_id from orders group by cust_id)a where number_of_id > 3