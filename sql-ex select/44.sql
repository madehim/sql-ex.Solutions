-- Find all ship names beginning with the letter R.

SELECT name 
FROM (SELECT name FROM Ships
UNION
SELECT ship FROM Outcomes) x
WHERE left(name,1) LIKE 'R'


