-- List all printer makers. Result set: maker.
SELECT DISTINCT maker
FROM Product
WHERE type='printer'
