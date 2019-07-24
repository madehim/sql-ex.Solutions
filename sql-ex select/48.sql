-- Find the ship classes having at least one ship sunk in battles.

SELECT DISTINCT a.class 
FROM
(SELECT CASE WHEN b.class IS NULL THEN a.ship ELSE b.class END class
FROM Outcomes a LEFT JOIN Ships b ON a.ship=b.name
WHERE result='sunk') a JOIN Classes b ON a.class=b.class

