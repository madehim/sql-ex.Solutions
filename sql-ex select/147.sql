-- Number the rows of the Product table as follows: makers in descending order of number of models produced by them (for manufacturers producing an equal number of models, their names are sorted in ascending alphabetical order); model numbers in ascending order. Result set: row number as described above, manufacturer's name (maker), model.

WITH newProduct AS 
(SELECT a.maker, a.model, b.cnt FROM Product a JOIN
(SELECT maker, COUNT(maker) cnt FROM Product GROUP BY maker) b 
ON a.maker=b.maker)
SELECT ROW_NUMBER() OVER(ORDER BY cnt DESC, maker, model) no, maker, model
FROM newProduct
