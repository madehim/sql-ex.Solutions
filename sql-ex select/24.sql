-- List the models of any type having the highest price of all products present in the database.

SELECT model FROM 
(SELECT model, price FROM PC
UNION ALL
SELECT model, price FROM Laptop
UNION ALL
SELECT model, price FROM Printer) x
WHERE price=(SELECT MAX(price) FROM (SELECT model, price FROM PC
UNION ALL
SELECT model, price FROM Laptop
UNION ALL
SELECT model, price FROM Printer) y)
GROUP BY model







