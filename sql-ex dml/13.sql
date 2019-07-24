-- Introduce into database information about the ship named Rodney was sunk in the battle on 10/25/1944, and ship named Nelson was damaged  in the battle on 01/28/1945.

INSERT INTO Outcomes
SELECT 'Rodney' ship, (SELECT name FROM Battles WHERE date='1944-10-25 00:00:00.000') battle, 'sunk' result
UNION ALL
SELECT 'Nelson' ship, (SELECT name FROM Battles WHERE date='1945-01-28 00:00:00.000') battle, 'damaged' result
