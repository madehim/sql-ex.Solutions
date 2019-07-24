-- Using the Income and Outcome tables, determine for each buy-back center the days when it received funds but made no payments, and vice versa.Result set: point, date, type of operation (inc/out), sum of money per day.

SELECT CASE WHEN a.point IS NULL THEN b.point ELSE a.point END point, CASE WHEN a.date IS NULL THEN b.date ELSE a.date END date, CASE WHEN a.operation IS NULL THEN 'inc' ELSE 'out' END operation, CASE WHEN a.money_sum IS NULL THEN b.money_sum ELSE a.money_sum END money_sum FROM
(SELECT point, date, 'out' operation, SUM(out) money_sum
FROM Outcome
GROUP BY point, date) a FULL JOIN (SELECT point, date, 'inc' operation, SUM(inc) money_sum
FROM Income
GROUP BY point, date) b ON a.point=b.point AND a.date=b.date
WHERE (a.point IS NULL OR b.point IS NULL) AND (a.date IS NULL OR b.date IS NULL)
