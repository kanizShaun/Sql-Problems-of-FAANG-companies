#Problem--
#Find the number of male and female employees per department 
#and also their corresponding total salaries.
#Output department names along with the corresponding number of female employees, 
#the total salary of female employees, the number of male employees, 
#and the total salary of male employees 

select a.*,b.number_of_male_employee, b.total_salary_of_male_employee from 
(select department, count(sex) as number_of_female_employee, sum(salary) as total_salary_of_female_employee from employee where sex = 'F'group by department)a left join
(select department, count(sex) as number_of_male_employee, sum(salary) as total_salary_of_male_employee from employee where sex = 'M'group by department)b on a.department = b.department