-- Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.  Result set: maker.

SELECT  DISTINCT maker FROM Product
WHERE model IN (
SELECT model FROM PC WHERE ram=(SELECT MIN(ram) FROM PC) AND speed=(SELECT MAX(speed) FROM PC WHERE ram=(SELECT MIN(ram) FROM PC)))
AND maker IN (SELECT maker FROM Product WHERE type='Printer')







