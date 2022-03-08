#Find the genre of the person with the most number of oscar winnings.
#If there are more than one person with the same number of oscar wins, 
#return the first one in alphabetic order. 
select a.name,a.top_genre, count(b.winner) as number_of_oscar_wins from oscar_nominees b, nominee_information a where b.winner = 'TRUE' group by a.name,a.top_genre order by a.name asc