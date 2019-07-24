-- Find the countries that have lost all their ships in battles.

WITH AllShips AS 
(SELECT ship, country
FROM Outcomes JOIN Classes
ON ship=class

UNION

SELECT name, country
FROM Classes JOIN Ships
ON Ships.class = Classes.class)
   
SELECT a.country        
FROM AllShips a
LEFT JOIN Outcomes b 
ON a.ship = b.ship AND b.result = 'sunk'  
GROUP BY a.country
HAVING COUNT(1) = COUNT(b.ship)
