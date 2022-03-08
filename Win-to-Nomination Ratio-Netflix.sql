#Calculate the win-to-nomination ratio for each nominee. 
#Output the ratio and the nominee's name. 
#Order the results based on the ratio in descending order 
#to show nominees with the highest ratio on top. 
select l.nominee, (l.pass/l.number :: float) as ratio from (select a.*, b.number from (select nominee,
 SUM(CASE WHEN winner = 'TRUE' THEN 1 ELSE 0 END) AS Pass
    from oscar_nominees
    group by nominee)a left join
(select nominee, count(winner) as number from oscar_nominees group by nominee)b on a.nominee = b.nominee)l group by l.nominee, l.pass,l.number order by ratio desc