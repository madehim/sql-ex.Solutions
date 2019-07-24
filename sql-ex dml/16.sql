-- Delete from the Product table the models, which are absent from other tables

DELETE FROM Product
WHERE model NOT IN (
SELECT DISTINCT model FROM PC
UNION ALL
SELECT DISTINCT model FROM Laptop
UNION ALL
SELECT DISTINCT model FROM Printer)
