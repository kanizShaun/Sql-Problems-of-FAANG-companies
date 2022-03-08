#Find the nominee who has won the most Oscars.
#Output the nominee's name alongside the result.
#Order the result based on the number of wins in descending order.

select nominee, count(winner) as number_of_Oscars 
from oscar_nominees where winner = 'TRUE' group by nominee 
order by number_of_Oscars desc limit 1