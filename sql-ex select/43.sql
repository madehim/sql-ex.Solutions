-- Get the battles that occurred in years when no ships were launched into water.

SELECT name FROM Battles
WHERE YEAR(date) NOT IN (SELECT DISTINCT launched FROM Ships WHERE launched IS NOT NULL)

