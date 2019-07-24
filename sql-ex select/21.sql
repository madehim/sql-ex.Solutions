-- Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.

SELECT maker, MAX(price)
FROM (SELECT DISTINCT b.maker, a.price
FROM PC a JOIN Product b ON a.model=b.model) x
GROUP BY maker




