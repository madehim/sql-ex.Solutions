-- For each product type and maker in the Product table, find out, with a precision of two decimal places, the percentage ratio of the number of models of the actual type produced by the actual maker to the total number of models by this maker. Result set: maker, product type, the percentage ratio mentioned above.

WITH ProductNew AS (SELECT  maker, 'PC' AS type, COUNT(type) c_type
FROM Product
WHERE type='PC'
GROUP BY maker
UNION ALL
SELECT maker, 'Laptop' AS type, COUNT(type) c_type
FROM Product
WHERE type='Laptop'
GROUP BY maker
UNION ALL
SELECT maker, 'Printer' AS type, COUNT(type) c_type
FROM Product
WHERE type='Printer'
GROUP BY maker)

SELECT a.maker, a.type, CAST(CAST(a.c_type AS DECIMAL(5,2))/CAST(b.cnt AS DECIMAL(5,2))*100 AS DECIMAL(5,2)) prc FROM
(SELECT a.maker, a.type, CASE WHEN b.c_type IS NULL THEN 0 ELSE b.c_type END c_type 
FROM (SELECT *
FROM (SELECT DISTINCT maker FROM Product) a CROSS JOIN (SELECT DISTINCT type FROM Product) b) a LEFT JOIN ProductNew b 
ON a.maker=b.maker AND a.type=b.type) a JOIN
(SELECT maker, COUNT(model) cnt
FROM Product 
GROUP BY maker) b 
ON a.maker=b.maker

