-- Find classes for which only one ship exists in the database (including the Outcomes table).

SELECT class FROM
(SELECT name, class FROM Ships
UNION
SELECT a.ship name, a.ship class FROM Outcomes a JOIN Classes b ON a.ship=b.class
) x
GROUP BY class
HAVING COUNT(name)=1









