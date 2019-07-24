-- Get the battles in which at least three ships from the same country took part.

SELECT DISTINCT o.battle FROM outcomes o 
LEFT JOIN ships s ON s.name = o.ship 
LEFT JOIN classes c ON o.ship = c.class OR s.class = c.class 
WHERE c.country IS NOT NULL 
GROUP BY c.country, o.battle 
HAVING COUNT(o.ship) >= 3
