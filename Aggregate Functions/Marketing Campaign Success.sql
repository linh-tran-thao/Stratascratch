/*  You have the marketing_campaign table, which records in-app purchases by users. Users making their first in-app purchase enter a marketing campaign, where they see call-to-actions for more purchases. Find how many users made additional purchases due to the campaign's success.
The campaign starts one day after the first purchase. Users with only one or multiple purchases on the first day do not count, nor do users who later buy only the same products from their first day.
*/
select count(distinct user_id) "COUNT"
  from marketing_campaign
 where (user_id, product_id) not in (select user_id, product_id 
                                       from marketing_campaign
                                      where (user_id, created_at) in (select user_id, min(created_at)
                                                                from marketing_campaign
                                                               group by user_id))

