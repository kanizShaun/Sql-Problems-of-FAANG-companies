#Find the customer with the highest daily total order cost 
#between 2019-02-01 to 2019-05-01. If customer had more than one 
#order on a certain day, sum the order costs on daily basis. 
#Output their first name, total cost of their items, and the date.
#For simplicity, you can assume that every first name 
#in the dataset is unique. 
select o.first_name, max(o.total_) as total_order_cost, o.order_date from 
(select c.first_name, c.order_date, sum(c.total_order_cost) 
 as total_ from 
(SELECT a.*,b.cust_id, b.order_date, b.order_details, b.total_order_cost
 FROM  customers a
join  orders b on a.id = b.cust_id )c
group by c.first_name, c.order_date)o
group by o.first_name, o.order_date order by total_order_cost desc limit 1