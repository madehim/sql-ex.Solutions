-- Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.  Result set: maker

SELECT maker
FROM (SELECT maker
FROM Product a JOIN Laptop b 
ON b.speed>=750 AND a.model=b.model
INTERSECT
SELECT maker
FROM Product a JOIN PC b 
ON b.speed>=750 AND a.model=b.model) x






