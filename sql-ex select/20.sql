-- Find the makers producing at least three distinct models of PCs. Result set: maker, number of PC models.

SELECT maker, COUNT(model)
FROM (SELECT maker, model FROM Product WHERE type='PC') x
GROUP BY maker
HAVING COUNT(model)>2





