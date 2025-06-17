-- Calculate the friend acceptance rate for each date when friend requests were sent. A request is sent if action = sent and accepted if action = accepted. If a request is not accepted, there is no record of it being accepted in the table. The output will only include dates where requests were sent and at least one of them was accepted, as the acceptance rate can only be calculated for those dates. Show the results ordered from the earliest to the latest date.

WITH sent_cte AS
    (SELECT "date" AS request_date,
            user_id_sender,
            user_id_receiver
    FROM fb_friend_requests
    WHERE action = 'sent'),
        accepted_cte AS
    (SELECT "date" AS request_date,
            user_id_sender,
            user_id_receiver
    FROM fb_friend_requests
    WHERE action = 'accepted')
SELECT s.request_date,
        COUNT(a.user_id_receiver)/CAST(COUNT(s.user_id_sender) AS FLOAT) AS
        percentage_acceptance
FROM sent_cte s
LEFT JOIN accepted_cte a ON s.user_id_sender = a.user_id_sender
AND s.user_id_receiver = a.user_id_receiver
GROUP BY s.request_date
ORDER BY s.request_date ASC;
