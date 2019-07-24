-- Delete from Ships table all the ships sunk in battles.

DELETE FROM Ships
WHERE name IN
(SELECT ship FROM Outcomes WHERE result='sunk')
