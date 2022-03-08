#Find order details made by Jill and Eva.
#Consider the Jill and Eva as first names of customers.
#Output the order date, details and cost along with the first name.
#Order records based on the customer id in ascending order. 
select a.first_name, b.order_date,b.order_details,b.total_order_cost from customers a left join orders b on a.id = b.cust_id where a.first_name in ('Jill', 'Eva') order by b.cust_id asc