-- Get hard drive capacities that are identical for two or more PCs.  Result set: hd.

SELECT hd
FROM (SELECT COUNT(hd) c, hd
FROM PC
GROUP BY hd) a
WHERE a.c>1
