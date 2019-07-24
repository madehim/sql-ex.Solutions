-- For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns.

SELECT a.ship name, b.displacement, b.numGuns 
FROM (SELECT a.ship, 
CASE WHEN b.class IS NULL 
THEN a.ship 
ELSE b.class END class 
FROM Outcomes a LEFT JOIN Ships b 
ON a.ship=b.name 
WHERE battle='Guadalcanal') a LEFT JOIN Classes b 
ON a.class=b.class
