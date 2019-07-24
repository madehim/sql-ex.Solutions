-- Delete the classes having less than three ships in database (taking into account Outcomes table).

DELETE FROM Classes
WHERE class NOT IN
(SELECT class
FROM (SELECT b.ship name, a.class class FROM Classes a JOIN Outcomes b ON a.class=b.ship
UNION
SELECT name, class FROM Ships
) x
WHERE name NOT IN (SELECT ship FROM Outcomes WHERE result='sunk' AND result='damaged')
GROUP BY class
HAVING COUNT(name)>=3)
