-- For each maker who has models at least in one of the tables PC, Laptop, or Printer, determine the maximum price for his products. Output: maker; if there are NULL values among the prices for the products of a given maker, display NULL for this maker, otherwise, the maximum price.

WITH AllMakerPrices AS (
SELECT Product.maker, PC.price
FROM PC JOIN Product 
ON PC.model = Product.model

UNION ALL

SELECT Product.maker, Laptop.price
FROM Laptop JOIN Product 
ON Laptop.model = Product.model

UNION ALL

SELECT Product.maker, Printer.price
FROM Printer JOIN Product 
ON Printer.model = Product.model
)

SELECT maker, CASE WHEN MAX(CASE WHEN price IS NULL THEN 1 ELSE 0 END) = 0 THEN 
MAX(price) END 
FROM AllMakerPrices
GROUP BY maker
