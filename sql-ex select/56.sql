-- For each class, find out the number of ships of this class that were sunk in battles.  Result set: class, number of ships sunk.

SELECT a.class, COUNT(b.class) Sunks 
FROM Classes a 
LEFT JOIN (SELECT a.ship name, CASE WHEN class IS NULL THEN a.ship ELSE class END class 
FROM (SELECT ship 
FROM Outcomes 
WHERE result='sunk') a 
LEFT JOIN Ships b 
ON a.ship=b.name) b 
ON a.class=b.class 
GROUP BY a.class
