-- For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.  Result set: maker, average screen size.


SELECT maker, AVG(screen) AS AVG_screen
FROM (SELECT a.maker, b.screen
FROM Product a JOIN Laptop b
ON a.model=b.model) x
GROUP BY maker




