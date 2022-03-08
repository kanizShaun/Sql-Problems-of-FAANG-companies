#Find the total cost of each customer's orders. 
#Output customer's id, first name, and the total order cost. 
#Order records by customer's first name alphabetically. 
select o.id as customers_id, o.first_name, sum(o.total_order_cost) as total_order_cost
from (select a.*, b.order_date, b.order_details, total_order_cost from customers a left join 
orders b on a.id = b.cust_id)o where o.total_order_cost is not null group by 
o.id , o.first_name order by o.first_name asc