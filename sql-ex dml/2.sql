-- Add to the Product table following products from maker Z: printer model 4003, PC model 4001 and laptop model 4002

INSERT INTO Product
SELECT 'Z' AS maker, 4003 AS model, 'Printer' AS type
UNION ALL
SELECT 'Z', 4001, 'PC'
UNION ALL
SELECT 'Z', 4002, 'Laptop'
