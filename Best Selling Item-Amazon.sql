#Find the best selling item for each month 
#(no need to separate months by year) where 
#the biggest total invoice was paid. 
#The best selling item is calculated using the formula (unitprice * quantity). 
#Output the description of the item along with the amount paid. 
select description,extract(month from invoicedate) as month,sum (unitprice*quantity) as revenue from online_retail group by description, month order by revenue desc limit 1