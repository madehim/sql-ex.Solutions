-- Under the assumption that receipts of money (inc) and payouts (out) can be registered any number of times a day for each collection point [i.e. the code column is the primary key], display a table with one corresponding row for each operating date of each collection point. Result set: point, date, total payout per day (out), total money intake per day (inc).  Missing values are considered to be NULL.

SELECT a.point, a.date, b.out, a.inc 
FROM (SELECT point, date, SUM(inc) inc
FROM Income
GROUP BY date, point) a LEFT JOIN (
SELECT point, date, SUM(out) out
FROM Outcome
GROUP BY date, point) b
ON a.point=b.point AND a.date=b.date
UNION ALL

SELECT b.point, b.date, b.out, a.inc 
FROM (SELECT point, date, SUM(inc) inc
FROM Income
GROUP BY date, point) a RIGHT JOIN (
SELECT point, date, SUM(out) out
FROM Outcome
GROUP BY date, point) b 
ON a.point=b.point AND a.date=b.date
WHERE a.point IS NULL AND a.date IS NULL






