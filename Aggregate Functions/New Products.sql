-- Calculate the net change in the number of products launched by companies in 2020 compared to 2019. Your output should include the company names and the net difference.
-- (Net difference = Number of products launched in 2020 - The number launched in 2019.)
select company_name, count(case when year = '2020' then company_name end) - count(case when year = '2019' then company_name end) as "net_products"
from car_launches
group by company_name
