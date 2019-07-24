-- For each group of laptops with the identical model number, add following record into PC table: code: minimal code among laptops in the group +20;

-- model: laptop's model number +1000;
-- speed: maximal speed among laptops in the group;
-- ram: maximal ram size among laptops in the group *2
-- hd: maximal hd capacity among laptops in the group *2;
-- cd: default value;
-- price: maximal price among laptops in the group divided by 1.5.
-- Remark. Consider model number as numeric.

INSERT INTO PC (code, model, speed, ram, hd, price)
SELECT MIN(code)+20 code, model+1000 model, MAX(speed) speed, MAX(ram)*2 ram, MAX(hd)*2 hd, MAX(price)/1.5 price 
FROM Laptop 
GROUP BY model
