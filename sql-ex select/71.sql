-- Find the PC makers with all personal computer models produced by them being present in the PC table.

SELECT DISTINCT maker
FROM Product
WHERE type='PC' AND maker NOT IN (SELECT DISTINCT maker
FROM Product a LEFT JOIN PC b
ON a.model=b.model
WHERE type='PC' AND b.model IS NULL)
