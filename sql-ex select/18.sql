-- Find the makers of the cheapest color printers. Result set: maker, price.


SELECT DISTINCT a.maker, b.price
FROM (SELECT a.model, a.price
FROM (SELECT MIN(price) AS price
FROM Printer
WHERE color='y' AND price IS NOT NULL) x, Printer a
WHERE a.price=x.price AND a.color='y') b JOIN Product a
ON a.model=b.model



