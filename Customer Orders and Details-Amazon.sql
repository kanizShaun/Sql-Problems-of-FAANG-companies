#Find the number of orders, the number of customers, 
#and the total cost of orders for each city. 
#Only include cities that have made at least 5 orders and 
#count all customers in each city even if they did not place an order.
#Output each calculation along with the corresponding city name. 
select o.* from (select a.city, count(a.id) as number_of_customers , count(b.order_date) as number_of_orders,sum(b.total_order_cost) as total_cost_of_orders
 from customers a 
left join orders b on a.id = b.cust_id group by a.city) o where o.number_of_orders > 4