#For each platform (e.g. Windows, iPhone, iPad etc.), 
#calculate the number of users. Consider unique users 
#and not individual sessions. 
#Output the name of the platform with the corresponding number of users. 
select platform, count(user_id) as number_of_users from user_sessions group by platform order by count(user_id) desc