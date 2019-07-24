-- Get the models and prices for all commercially available products (of any type) produced by maker B.

SELECT DISTINCT a.model, b.price
FROM Product a, PC b
WHERE a.maker='B' AND b.model=a.model
UNION
SELECT DISTINCT a.model, b.price
FROM Product a, Laptop b
WHERE a.maker='B' AND b.model=a.model
UNION
SELECT DISTINCT a.model, b.price
FROM Product a, Printer b
WHERE a.maker='B' AND b.model=a.model
