-- List the names of lead ships in the database (including the Outcomes table).

SELECT a.name FROM Ships a JOIN Classes b ON a.name=b.class
UNION
SELECT a.ship FROM Outcomes a JOIN Classes b ON a.ship=b.class








