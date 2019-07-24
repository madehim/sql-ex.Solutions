-- For each class, determine the year the first ship of this class was launched.  If the lead ship’s year of launch is not known, get the minimum year of launch for the ships of this class. Result set: class, year.


WITH AllShips AS (SELECT * FROM Ships
UNION
SELECT class name, class, NULL launched FROM Classes 
WHERE class NOT IN (SELECT DISTINCT class FROM Ships))

SELECT class, MIN(launched)
FROM AllShips
GROUP BY class
