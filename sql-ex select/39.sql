-- Find the ships that `survived for future battles`; that is, after being damaged in a battle, they participated in another one, which occurred later.

SELECT DISTINCT a.ship FROM
(SELECT a.ship, b.date as dam_date FROM Outcomes a JOIN Battles b on a.battle=b.name WHERE a.result='damaged') a JOIN

(SELECT a.ship, b.date FROM Outcomes a JOIN Battles b ON a.battle=b.name) b ON a.ship=b.ship WHERE b.date>a.dam_date







