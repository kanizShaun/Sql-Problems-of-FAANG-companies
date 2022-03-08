#Your objective is to identify the top 5 percentile of claims from each state. 
#Your output should be policy number, state, claim cost, and fraud score

select a.state, a.claim_cost, a.fraud_score 
from(select *, ntile(100) over(partition by state order by fraud_score desc) as percentile from fraud_score)a 
where a.percentile <= 5