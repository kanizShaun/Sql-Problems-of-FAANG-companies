#Find the details of each customer regardless of 
#whether the customer made an order. Output the customer's first name, 
#last name, and the city along with the order details.
#You may have duplicate rows in your results due to 
#a customer ordering several of the same items. Sort records based on 
#the customer's first name and the order details in ascending order 
select o.first_name, o.last_name, o.city, o.order_details from
(select p.first_name, p.last_name, p.city, p.order_details,max(p.row_) as max_row from
(select h.*,row_number() over(partition by h.cust_id order by h.order_date) as row_ from
(select a.*, b.cust_id
      ,b.order_date
      ,b.order_details
      ,b.total_order_cost from  customers a
left join
orders b
on
a.id = b.cust_id)h)p group by p.first_name, p.last_name, p.city, p.order_details)o order by o.first_name