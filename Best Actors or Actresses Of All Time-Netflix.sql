#Find the best actors/actresses of all time based on the number of Oscar awards. 
#Output nominees alongside their number of Oscars. 
#Order records in descending order based on the number of awards. 
select nominee, count(winner) as number_of_Oscars from oscar_nominees where winner = 'TRUE' group by nominee order by number_of_Oscars desc