-- Delete from the Laptop table all the laptops of those makers who don't produce printers.

DELETE FROM Laptop
WHERE model NOT IN
(SELECT model
FROM Product
WHERE type='Laptop' AND maker IN
(SELECT maker FROM Product
WHERE type='Printer'
GROUP BY maker))
