-- Using Product table, find out the number of makers who produce only one model.


SELECT COUNT(maker) FROM
(SELECT maker FROM Product
GROUP by maker
HAVING COUNT(model)=1) x










