-- For the PC in the PC table with the maximum code value, obtain all its characteristics (except for the code) and display them in two columns:- name of the characteristic (title of the corresponding column in the PC table);- its respective value.

SELECT chr, value
FROM (SELECT CAST(model AS VARCHAR(MAX)) AS model, CAST(speed AS VARCHAR(MAX)) AS speed, CAST(ram AS VARCHAR(MAX)) AS ram, CAST(hd AS VARCHAR(MAX)) AS hd, CAST(cd AS VARCHAR(MAX)) AS cd, CASE 
 WHEN price IS NULL
 THEN '' 
 ELSE CAST(price AS VARCHAR(MAX)) 
 END AS price 
FROM PC
WHERE code=(SELECT MAX(code) FROM PC)) a
UNPIVOT (value
FOR chr IN (model, speed, ram, hd, cd, price)) unpvt
