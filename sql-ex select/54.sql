-- With a precision of two decimal places, determine the average number of guns for all battleships (including the ones in the Outcomes table).


WITH AllShips AS (SELECT name, class FROM Ships
UNION
SELECT ship name, ship class 
FROM Outcomes WHERE ship IN (SELECT class FROM Classes))

SELECT CAST(AVG(a.numGuns) AS NUMERIC(5,2)) 
FROM (SELECT class, CAST(numGuns AS NUMERIC(5,2)) numGuns 
FROM Classes WHERE type='bb') a 
JOIN AllShips b 
ON a.class=b.class
