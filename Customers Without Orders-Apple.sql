#Find customers who have never made an order.
#Output the first name of the customer. 
select first_name from customers where id not in (select cust_id from orders)