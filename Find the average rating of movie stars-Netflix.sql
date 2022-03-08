#Find the average rating of each movie star along with their names and birthdays. 
#Sort the result in the ascending order based on the birthday. 
select a.name, b.birthday, avg(a.rating) as average_rating from nominee_filmography a, nominee_information b where a.rating is not null group by a.name, b.birthday order by b.birthday asc