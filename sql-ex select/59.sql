-- Calculate the cash balance of each buy-back center for the database with money transactions being recorded not more than once a day. Result set: point, balance.

SELECT a.point, a.inc_sum-CASE WHEN b.out_sum IS NULL THEN 0 ELSE b.out_sum END Remain 
FROM (SELECT point, SUM(inc) inc_sum FROM Income_o
GROUP BY point) a 
LEFT JOIN (SELECT point, SUM(out) out_sum FROM Outcome_o
GROUP BY point) b 
ON a.point=b.point


