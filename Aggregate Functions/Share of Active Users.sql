-- Calculate the percentage of users who are both from the US and have an 'open' status, as indicated in the fb_active_users table.

select SUM(CASE 
                WHEN country = 'USA'
                    AND status = 'open' THEN 1
                ELSE 0
            END) * 100.0/COUNT(*) AS us_active_share
from fb_active_users;
