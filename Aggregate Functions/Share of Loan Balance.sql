-- Write a query that returns the rate_type, loan_id, loan balance , and a column that shows with what percentage the loan's balance contributes to the total balance among the loans of the same rate type. Sort the final output by rate_type and loan_id.

select rate_type, loan_id, balance, (balance / SUM(balance) over (partition by rate_type)) * 100 as balance_share
from submissions
