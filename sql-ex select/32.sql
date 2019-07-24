-- One of the characteristics of a ship is one-half the cube of the calibre of its main guns (mw). Determine the average ship mw with an accuracy of two decimal places for each country having ships in the database.


SELECT country, convert(numeric(10,2), AVG(POWER(a.bore, 3)/2)) mw
FROM (SELECT DISTINCT b.country, b.bore, a.name FROM ships a JOIN Classes b ON a.class=b.class
UNION 
SELECT DISTINCT b.country , b.bore, a.ship name
FROM Outcomes a JOIN classes b ON a.ship=b.class
WHERE ship NOT IN (SELECT name FROM Ships)) a  
GROUP BY country







