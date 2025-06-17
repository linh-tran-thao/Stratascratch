-- Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.

WITH salaries AS (
SELECT MAX(CASE WHEN dept.department = 'marketing' THEN salary END) AS marketing_salary, 
    MAX(CASE WHEN dept.department = 'engineering' THEN salary END) AS engineering_salary
FROM db_employee emp
INNER JOIN db_dept dept ON emp.department_id = dept.id
)

SELECT ABS(marketing_salary - engineering_salary) AS salary_diff
FROM salaries;
