-- Get the makers who produce only one product type and more than one model. Output: maker, type.

SELECT DISTINCT a.maker, d.type 
FROM Product d, (SELECT maker, COUNT(distinct type) AS c FROM Product GROUP BY maker) a JOIN (SELECT maker, COUNT(distinct model) AS c FROM Product GROUP BY maker) b
ON a.c=1 AND b.c>1 AND a.maker=b.maker
WHERE d.maker=a.maker




