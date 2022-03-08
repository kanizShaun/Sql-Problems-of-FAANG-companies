#Find the nominees who have been nominated the most but have never won an Oscar. 
#Output the number of unsuccessful nominations alongside the nominee's name. 
#Order records based on the number of nominations in descending order. 
select 	nominee, count(winner) as unsuccessful_nominations  from oscar_nominees where winner = 'FALSE' group by nominee order by unsuccessful_nominations desc