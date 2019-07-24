-- Find all ship names consisting of three or more words (e.g., King George V). Consider the words in ship names to be separated by single spaces, and the ship names to have no leading or trailing spaces.


SELECT name 
FROM (SELECT name FROM Ships
UNION 
SELECT ship FROM Outcomes) a
WHERE name LIKE '% % %'
