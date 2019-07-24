-- Find the battles in which Kongo-class ships from the Ships table were engaged.


SELECT DISTINCT battle FROM Outcomes
WHERE ship='Kongo' OR ship IN (SELECT name FROM Ships WHERE class='Kongo')
