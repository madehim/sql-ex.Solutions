-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.

SELECT DISTINCT a.maker
FROM Product a JOIN PC b
ON a.model=b.model AND b.speed>=450
