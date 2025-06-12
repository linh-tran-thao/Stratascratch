-- Which partners have ‘pizza’ in their name and are located in Boston? And what is the average order amount? Output the partner name and the average order amount.

SELECT p.name,
        avg(amount)
FROM postmates_orders o
JOIN postmates_partners p ON p.id = o.seller_id
WHERE p.name LIKE '%pizza'
AND city_id IN
    (SELECT id
    FROM postmates_markets
    WHERE name = 'Boston')
GROUP BY p.name
