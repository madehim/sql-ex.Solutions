-- Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers. Result set: maker, average HDD capacity.


SELECT maker, AVG(hd) FROM
(SELECT a.maker, b.hd 
FROM Product a JOIN PC b 
ON a.model=b.model AND a.maker IN(SELECT DISTINCT maker FROM Product WHERE type='Printer')) x
GROUP BY maker









