-- Number the unique pairs {maker, type} in the Product table, ordering them as follows: - maker name in ascending order; - type of product (type) in the order PC, Laptop, Printer. If a manufacturer produces more than one type of product, its name should be displayed in the first row only; other rows for THIS manufacturer should contain an empty string (').

SELECT row_number() OVER(ORDER BY maker, LEN(type)) num, CASE WHEN LAG(maker) OVER(ORDER BY maker, LEN(type))=maker THEN '' ELSE maker END, type 
FROM (SELECT DISTINCT maker, type FROM Product) a
