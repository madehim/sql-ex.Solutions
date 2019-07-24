-- Find out the average price of PCs and laptops produced by maker A. Result set: one overall average price for all items.

SELECT AVG(price) FROM
(SELECT price FROM PC
WHERE model IN (SELECT model FROM Product WHERE maker='A' AND type='PC')
UNION ALL
SELECT price FROM Laptop
WHERE model IN (SELECT model FROM Product WHERE maker='A' AND type='Laptop')) x








