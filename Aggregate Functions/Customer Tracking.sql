-- Given the users' sessions logs on a particular day, calculate how many hours each user was active that day.
-- Note: The session starts when state=1 and ends when state=0.

WITH session_date AS (
    SELECT
        cust_id,
        state,
        timestamp,
        LAG(state) OVER (PARTITION BY cust_id ORDER BY timestamp) AS prev_state,
        LAG(timestamp) OVER (PARTITION BY cust_id ORDER BY timestamp) as prev_timestamp
    FROM
        cust_tracking
),
    active_sessions AS 
(   SELECT
        cust_id,
        (CAST(timestamp AS DATE) - CAST(prev_timestamp AS DATE)) * 24 AS active_hours
    FROM 
        session_date
    WHERE
        state = 0 AND prev_state = 1
)

SELECT cust_id,
    ROUND(SUM(active_hours), 2) AS total_active_hours
FROM active_sessions
GROUP BY cust_id
ORDER BY cust_id;
