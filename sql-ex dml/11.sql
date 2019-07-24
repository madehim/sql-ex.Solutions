-- For each group of laptops with the identical model number, add following record into PC table:

--code: minimal code among laptops in the group +20;

--model: laptop's model number +1000;

--speed: maximal speed among laptops in the group;

--ram: maximal ram size among laptops in the group *2

--hd: maximal hd capacity among laptops in the group *2;

--cd: cd with maximal speed among all the PCs;

INSERT INTO PC 
SELECT MIN(a.code)+20 code, 
a.model+1000 model,
MAX(a.speed) speed,
MAX(a.ram)*2 ram,
MAX(a.hd)*2 hd,
(SELECT CAST(MAX(CAST(REPLACE(b.cd,'x','')AS int))AS varchar)+'x' cd FROM PC b) cd,
MAX(a.price)/1.5 price
FROM Laptop a
GROUP BY a.model

