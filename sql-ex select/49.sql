-- Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table).


SELECT a.name 
FROM 
(SELECT a.ship name, a.ship as class 
FROM Outcomes a WHERE a.ship NOT IN(SELECT name FROM Ships)
UNION 
SELECT name, class FROM Ships) a 
JOIN (SELECT class FROM Classes WHERE bore=16) b 
ON a.class=b.class
