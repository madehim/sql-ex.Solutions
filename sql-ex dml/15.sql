-- From each group of the PC with identical number of model in PC table, delete all rows except for row with the greatest code for this group (code column).

DELETE FROM PC
WHERE code NOT IN
(SELECT MAX(code) code FROM PC
GROUP BY model)
