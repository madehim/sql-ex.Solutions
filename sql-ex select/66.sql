-- For all days between 2003-04-01 and 2003-04-07 find the number of trips from Rostov.  Result set: date, number of trips.

SELECT a.DT, CASE WHEN b.Qty IS NULL THEN 0 ELSE b.Qty END Qty
FROM (SELECT a+b date, a+b+' 00:00:00.000' DT
FROM (SELECT '2003-04' a) x CROSS JOIN
 (SELECT '-01' b UNION ALL SELECT '-02' UNION ALL SELECT '-03' UNION ALL SELECT '-04' UNION ALL SELECT '-05' UNION ALL SELECT '-06' UNION ALL SELECT '-07') y) a LEFT JOIN (SELECT date, COUNT(trip_no) Qty 
FROM (SELECT DISTINCT a.date, a.trip_no 
FROM Pass_in_trip a JOIN
(SELECT trip_no 
FROM Trip
WHERE town_from='Rostov') b
ON a.trip_no=b.trip_no) a
WHERE date BETWEEN '2003-04-01' AND '2003-04-07'
GROUP BY date) b
ON a.date=b.date
