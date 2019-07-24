-- Find out the average speed of the PCs produced by maker A.


SELECT AVG(a.speed)
FROM PC a JOIN Product b
ON a.model=b.model AND b.maker='A'


