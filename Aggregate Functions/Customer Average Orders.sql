-- How many customers placed an order and what is the average order amount?

select COUNT(DISTINCT(CUSTOMER_ID)), AVG(AMOUNT)
from postmates_orders
