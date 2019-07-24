-- Find out the number of routes with the greatest number of flights (trips). Notes.  1) A - B and B - A are to be considered the SAME route. 2) Use the Trip table only.

WITH NewTrip AS(SELECT 
CASE WHEN town_from > town_to THEN town_from ELSE town_to END town_from,
CASE WHEN town_from < town_to THEN town_from ELSE town_to END town_to
FROM Trip)

SELECT COUNT(*) FROM (
SELECT town_from, town_to, COUNT(town_from) cnt
FROM NewTrip
GROUP BY town_from, town_to) a
WHERE cnt=ALL(SELECT MAX(cnt) FROM (SELECT town_from, town_to, COUNT(town_from) cnt
FROM NewTrip
GROUP BY town_from, town_to) a)
