-- For classes having irreparable combat losses and at least three ships in the database, display the name of the class and the number of ships sunk.

WITH AllShips AS (SELECT name, class FROM Ships
UNION
SELECT ship name, ship class 
FROM Outcomes 
WHERE ship IN (SELECT class FROM Classes))

SELECT a.class, COUNT(b.class) 
FROM  (SELECT class 
FROM AllShips 
GROUP BY class 
HAVING COUNT(class)>=3) a 
JOIN (SELECT ship name, CASE WHEN b.class IS NULL THEN ship ELSE b.class END class 
FROM (SELECT ship 
FROM Outcomes 
WHERE result='sunk') a 
LEFT JOIN Ships b 
ON a.ship=b.name) b 
ON a.class=b.class 
GROUP BY a.class
