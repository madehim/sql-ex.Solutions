-- Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table).



WITH AllShips AS (SELECT name, class FROM Ships
UNION
SELECT ship name, ship class FROM Outcomes a JOIN Classes b ON a.ship=b.class)

SELECT name FROM AllShips a JOIN
(SELECT class FROM (SELECT class, displacement, numGuns FROM Classes) a
JOIN (SELECT MAX(numGuns) nGMax, displacement FROM (SELECT * FROM Classes WHERE class IN (SELECT DISTINCT class FROM AllShips GROUP BY Class)) a GROUP BY displacement) b ON a.displacement=b.displacement WHERE a.numGuns=b.nGMax) b
ON a.class=b.class
