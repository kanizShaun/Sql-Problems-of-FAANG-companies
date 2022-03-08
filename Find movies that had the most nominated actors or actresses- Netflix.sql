#Find movies that had the most nominated actors/actresses. 
#Be aware of the fact that some movies have the same name. 
#Use the year column to separate count for such movies.
#Output the movie name alongside the number of nominees.
#Order the result in descending order. 
select a.movie,count(a.nominee) as  number_of_nominees from   
(select distinct year,movie, nominee from  oscar_nominees)a group by a.movie order by number_of_nominees desc