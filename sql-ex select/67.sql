-- Find out the number of routes with the greatest number of flights (trips). Notes.  1) A - B and B - A are to be considered DIFFERENT routes. 2) Use the Trip table only.

WITH TripNew AS (SELECT town_from, town_to, COUNT(trip_no) qty
FROM Trip
GROUP BY town_from, town_to)
 
SELECT COUNT(qty) 
FROM TripNew 
WHERE TripNew.qty>=ALL(SELECT MAX(qty) 
FROM TripNew 
GROUP BY town_from, town_to)
