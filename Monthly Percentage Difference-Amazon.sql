#Given a table of purchases by date, 
#calculate the month-over-month percentage change in revenue. 
#The output should include the year-month date (YYYY-MM) and percentage change, 
#rounded to the 2nd decimal point, and sorted from the beginning of the year to the end of the year.
#The percentage change column will be populated from the 2nd month forward 
#and can be calculated as 
#((this month's revenue - last month's revenue) / last month's revenue)*100. 
select w.year_month, round(((w.revenue - w.rank_) /w.rank_) * 100, 2) as revenue_diff_pct from (select a.* , lag(a.revenue, 1) over(order by a.year_month) as rank_ from (select to_char(created_at, 'yyyy-mm') as year_month, sum(value) as revenue from sf_transactions group by year_month 
order by year_month asc) a)w