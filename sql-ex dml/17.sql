-- Delete computers with the three lowest hard drive capacities (hd) from the PC table.

DELETE FROM PC
WHERE hd IN (SELECT DISTINCT TOP 3 hd FROM PC
ORDER BY hd ASC)
